//
//  WebViewController.m
//  NPPHomework4
//
//  Created by Nick Peters on 3/5/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.name;
    
    [self.webView loadRequest:self.request];
}

@end
