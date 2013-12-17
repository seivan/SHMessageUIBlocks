//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 7/27/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//


#import "SHMessageUIBlocksSuper.h"

@interface SHMailTests : SHMessageUIBlocksSuper
@end

@implementation SHMailTests
@end


@interface SHMailTestsCallbacks : SHMailTests
@end


@implementation SHMailTestsCallbacks

#pragma mark - Init
-(void)testSH_mailComposeViewController; {
  XCTAssertEqualObjects(self.mailVc.class, MFMailComposeViewController.new.class);
  XCTAssertNotNil(self.mailVc.mailComposeDelegate);
}

-(void)testSH_mailComposeViewControllerWithBlock; {
  SHMailComposerBlock block = ^(MFMailComposeViewController * theController,
                                MFMailComposeResult theResults,
                                NSError * theError) {
    
  };
  
  self.mailVc = [MFMailComposeViewController SH_mailComposeViewControllerWithBlock:block];
  XCTAssertEqualObjects(self.mailVc.class, MFMailComposeViewController.new.class);
  XCTAssertNotNil(self.mailVc.mailComposeDelegate);
  XCTAssertEqualObjects(block, self.mailVc.SH_blockComposerCompletion);
}


#pragma mark - Properties

#pragma mark - Setters
-(void)testSH_setComposerCompletionBlock; {
  __block BOOL didAssert = NO;
  XCTAssertNil(self.mailVc.SH_blockComposerCompletion);
  SHMailComposerBlock block = ^(MFMailComposeViewController * theController,
                                MFMailComposeResult theResults,
                                NSError * theError) {
    
    XCTAssertEqualObjects(theController, self.mailVc);
    XCTAssertEqual(theResults, MFMailComposeResultCancelled);
    XCTAssertEqualObjects(theError, nil);
    didAssert = YES;
  };
  [self.mailVc SH_setComposerCompletionBlock:block];
  
  self.mailVc.SH_blockComposerCompletion(self.mailVc, MFMailComposeResultCancelled, nil);
  XCTAssertTrue(didAssert);
  
}



#pragma mark - Getters
-(void)testSH_blockComposerCompletion; {
  XCTAssertNil(self.mailVc.SH_blockComposerCompletion);
  SHMailComposerBlock block = ^(MFMailComposeViewController * theController,
                                MFMailComposeResult theResults,
                                NSError * theError) {
    
  };
  [self.mailVc SH_setComposerCompletionBlock:block];
  XCTAssertEqualObjects(block, self.mailVc.SH_blockComposerCompletion);
  
}

@end
