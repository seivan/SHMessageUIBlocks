//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 7/27/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//


#import "SHMessageUIBlocksSuper.h"

@interface SHMessageTests : SHMessageUIBlocksSuper
@end

@implementation SHMessageTests
@end


@interface SHMessageTestsCallbacks : SHMessageTests
@end


@implementation SHMessageTestsCallbacks

#pragma mark - Init
-(void)testSH_messageComposeViewController; {
  STAssertEqualObjects(self.messageVc.class, MFMessageComposeViewController.new.class, nil);
  STAssertNotNil(self.messageVc.messageComposeDelegate, nil);
}


#pragma mark - Properties

#pragma mark - Setters
-(void)testSH_setComposerCompletionBlock; {
  __block BOOL didAssert = NO;
  STAssertNil(self.messageVc.SH_blockComposerCompletion, nil);
  SHMessageComposerBlock block = ^(MFMessageComposeViewController * theController,
                                   MessageComposeResult theResults) {
    
    STAssertEqualObjects(theController, self.messageVc, nil);
    STAssertEquals(theResults, MessageComposeResultCancelled, nil);

    didAssert = YES;
  };
  [self.messageVc SH_setComposerCompletionBlock:block];
  
  self.messageVc.SH_blockComposerCompletion(self.messageVc, MessageComposeResultCancelled);
  STAssertTrue(didAssert, nil);
  
}



#pragma mark - Getters
-(void)testSH_blockComposerCompletion; {
  STAssertNil(self.messageVc.SH_blockComposerCompletion, nil);
  SHMessageComposerBlock block = ^(MFMessageComposeViewController * theController,
                                   MessageComposeResult theResults) {
    
  };
  [self.messageVc SH_setComposerCompletionBlock:block];
  STAssertEqualObjects(block, self.messageVc.SH_blockComposerCompletion, nil);
  
}

@end
