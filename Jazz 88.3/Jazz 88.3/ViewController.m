//
//  ViewController.m
//  Jazz 88.3
//
//  Created by Neal Clark on 1/21/15.
//  Copyright (c) 2015 Neal Clark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMenu* rootMenu = [NSApp mainMenu];
    for (id menuItem in [rootMenu itemArray]) {
        NSString *title = [menuItem title];
        
        if (![title isEqualToString:@"Jazz 88.3"]) {
            [rootMenu removeItem:menuItem];
        }
    }
    
    NSURL *url = [NSURL URLWithString:@"http://jazz88.org/Listen.asp"];
    NSURLRequest *request = [NSURLRequest requestWithURL: url];
    WebFrame *webFrame = [self.webView mainFrame];
    [webFrame loadRequest:request];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
