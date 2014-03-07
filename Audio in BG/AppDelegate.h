//
//  AppDelegate.h
//  Audio in BG
//
//  Created by Sabatino Masala on 07/03/14.
//  Copyright (c) 2014 Sabatino Masala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackgroundViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BackgroundViewController *backgroundController;
@property (strong, nonatomic) NSTimer *backgroundTimer;

@end
