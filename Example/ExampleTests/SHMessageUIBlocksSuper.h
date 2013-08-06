//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 7/27/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//


#import "KIF.h"
#import "SHTestCaseAdditions.h"
#import "SHMessageUIBlocks.h"
#import "SHFastEnumerationProtocols.h"




@interface SHMessageUIBlocksSuper : KIFTestCase
@property(nonatomic,strong) UIViewController               * vc;
@property(nonatomic,strong) MFMailComposeViewController    * mailVc;
@property(nonatomic,strong) MFMessageComposeViewController * messageVc;
@end

