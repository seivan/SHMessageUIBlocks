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

@interface SHMailTestsIntegration : SHMailTests
@end

@interface SHMailTestsCallbacks : SHMailTests
@end


@implementation SHMailTestsIntegration

#pragma mark - Init
//+(instancetype)SH_mailComposeViewController;
-(void)testSH_mailComposeViewController; {
  
}



#pragma mark - Properties


#pragma mark - Setters
-(void)testSH_setComposerCompletionBlock; {
  
}



#pragma mark - Getters
-(void)testSH_blockComposerCompletion; {
  
}

@end


@implementation SHMailTestsCallbacks

#pragma mark - Init
-(void)testSH_mailComposeViewController; {
  STAssertEqualObjects(self.mailVc.class, MFMailComposeViewController.new.class, nil);
  STAssertNotNil(self.mailVc.mailComposeDelegate, nil);
}


#pragma mark - Properties

#pragma mark - Setters
-(void)testSH_setComposerCompletionBlock; {
  __block BOOL didAssert = NO;
  STAssertNil(self.mailVc.SH_blockComposerCompletion, nil);
  SHMailComposerBlock block = ^(MFMailComposeViewController * theController,
                                MFMailComposeResult theResults,
                                NSError * theError) {
    
    STAssertEqualObjects(theController, self.mailVc, nil);
    STAssertEquals(theController, MFMailComposeResultCancelled, nil);
    STAssertEqualObjects(theError, nil, nil);
    didAssert = YES;
  };
  [self.mailVc SH_setComposerCompletionBlock:block];
  STAssertEqualObjects(block, self.mailVc.SH_blockComposerCompletion, nil);
}



#pragma mark - Getters
-(void)testSH_blockComposerCompletion; {
  STAssertNil(self.mailVc.SH_blockComposerCompletion, nil);
  SHMailComposerBlock block = ^(MFMailComposeViewController * theController,
                                MFMailComposeResult theResults,
                                NSError * theError) {
    
  };
  [self.mailVc SH_setComposerCompletionBlock:block];
  STAssertEqualObjects(block, self.mailVc.SH_blockComposerCompletion, nil);
  
}

@end
