////
////  ExampleTests.m
////  ExampleTests
////
////  Created by Seivan Heidari on 7/27/13.
////  Copyright (c) 2013 Seivan Heidari. All rights reserved.
////
//
//
//#import "SHMessageUIBlocksSuper.h"
//
//@interface SHMessageTests : SHMessageUIBlocksSuper
//@end
//
//@implementation SHMessageTests
//@end
//
//
//@interface SHMessageTestsCallbacks : SHMessageTests
//@end
//
//
//@implementation SHMessageTestsCallbacks
//
//#pragma mark - Init
//-(void)testSH_messageComposeViewController; {
//  XCTAssertEqualObjects(self.messageVc.class, MFMessageComposeViewController.new.class);
//  XCTAssertNotNil(self.messageVc.messageComposeDelegate);
//}
//
//-(void)testSH_mailComposeViewControllerWithBlock; {
//  SHMessageComposerBlock block = ^(MFMessageComposeViewController * theController,
//                                   MessageComposeResult theResults) {
//    
//  };
//  
//  self.messageVc = [MFMessageComposeViewController SH_messageComposeViewControllerWithBlock:block];
//  XCTAssertEqualObjects(self.messageVc.class, MFMessageComposeViewController.new.class);
//  XCTAssertNotNil(self.messageVc.messageComposeDelegate);
//  XCTAssertEqualObjects(block, self.messageVc.SH_blockComposerCompletion);
//}
//
//
//
//#pragma mark - Properties
//
//#pragma mark - Setters
//-(void)testSH_setComposerCompletionBlock; {
//  __block BOOL didAssert = NO;
//  XCTAssertNil(self.messageVc.SH_blockComposerCompletion);
//  SHMessageComposerBlock block = ^(MFMessageComposeViewController * theController,
//                                   MessageComposeResult theResults) {
//    
//    XCTAssertEqualObjects(theController, self.messageVc);
//    XCTAssertEqual(theResults, MessageComposeResultCancelled);
//
//    didAssert = YES;
//  };
//  [self.messageVc SH_setComposerCompletionBlock:block];
//  
//  self.messageVc.SH_blockComposerCompletion(self.messageVc, MessageComposeResultCancelled);
//  XCTAssertTrue(didAssert);
//  
//}
//
//
//
//#pragma mark - Getters
//-(void)testSH_blockComposerCompletion; {
//  XCTAssertNil(self.messageVc.SH_blockComposerCompletion);
//  SHMessageComposerBlock block = ^(MFMessageComposeViewController * theController,
//                                   MessageComposeResult theResults) {
//    
//  };
//  [self.messageVc SH_setComposerCompletionBlock:block];
//  XCTAssertEqualObjects(block, self.messageVc.SH_blockComposerCompletion);
//  
//}
//
//@end
