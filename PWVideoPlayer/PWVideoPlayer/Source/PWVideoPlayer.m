//
//  PWVideoPlayer.m
//  PWVideoPlayer
//
//  Created by panwei on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import "PWVideoPlayer.h"
#import <AVFoundation/AVFoundation.h>

@implementation PWVideoPlayer
+ (instancetype)playVideoWithURL:(NSString *)remoteURL inViewController:(UIViewController *)superViewController frame:(CGRect)frame {
    PWVideoPlayer *player = [[[self class] alloc] init];
    AVPlayer *avPlayer = [[AVPlayer alloc] initWithURL:[NSURL URLWithString:remoteURL]];
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:avPlayer];
    playerLayer.frame = frame;
    [superViewController.view.layer addSublayer:playerLayer];
    [avPlayer play];
    return player;
}

- (instancetype)initWithURL:(nullable NSURL *)fileURL  {
    self = [super init];
    if (!self) {
        return nil;
    }
    return self;
}


@end
