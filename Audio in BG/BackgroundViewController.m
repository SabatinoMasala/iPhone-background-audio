//
//  BackgroundViewController.m
//  Audio in BG
//
//  Created by Sabatino Masala on 07/03/14.
//  Copyright (c) 2014 Sabatino Masala. All rights reserved.
//

#import "BackgroundViewController.h"

@implementation BackgroundViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self setupAudioPlayer];
    }
    return self;
}

-(void)setupAudioPlayer{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"alarm" ofType:@"mp3"]];
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [self.player play];
    self.player.numberOfLoops = -1;
    self.player.volume = 0.0f;
}

-(void)tick{

    //NSLog(@"Player is currently playing: %i", self.player.isPlaying);
    NSLog(@"%f", [[UIApplication sharedApplication] backgroundTimeRemaining]);
    
    if (self.timer == 100) {
        self.player.volume = 1.0f;
        self.player.currentTime = 0.0f;
        [self.player play];
    }
    self.timer++;
}

@end
