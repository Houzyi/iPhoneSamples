//
//  AppDelegate.h
//  TestSlideNavigation
//
//  Created by matsuda on 12/05/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SlideNavigationController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SlideNavigationController *slideController;

@end
