//
//  ViewController.m
//  TestInterfaceOrientation
//
//  Created by Kosuke Matsuda on 2012/11/08.
//  Copyright (c) 2012年 matsuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%s", __func__);
    [self logView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%s", __func__);
    [self logView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%s", __func__);
    [self logView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)logView
{
    NSLog(@"################ window ################");
    NSLog(@"frame  (window) >>>>>>> %@", NSStringFromCGRect(self.view.window.frame));
    NSLog(@"bounds (window) >>>>>>> %@", NSStringFromCGRect(self.view.window.bounds));
    NSLog(@"################  view  ################");
    NSLog(@"frame  (view)   >>>>>>> %@", NSStringFromCGRect(self.view.frame));
    NSLog(@"bounds (view)   >>>>>>> %@", NSStringFromCGRect(self.view.bounds));
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

@end