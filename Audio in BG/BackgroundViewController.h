//
//  BackgroundViewController.h
//  Audio in BG
//
//  Created by Sabatino Masala on 07/03/14.
//  Copyright (c) 2014 Sabatino Masala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface BackgroundViewController : UIViewController

@property (nonatomic) int timer;
@property (strong, nonatomic) AVAudioPlayer *player;

-(void)tick;

@end
