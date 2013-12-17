//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 7/27/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//



#import "SHMessageUIBlocksSuper.h"



@implementation SHMessageUIBlocksSuper
-(void)setUp; {
  self.vc = UIViewController.new;
  [UIApplication sharedApplication].keyWindow.rootViewController = self.vc;
  [[UIApplication sharedApplication].keyWindow makeKeyAndVisible];
  self.mailVc    = [MFMailComposeViewController SH_mailComposeViewController];
  self.messageVc = [MFMessageComposeViewController SH_messageComposeViewController];

}

@end

