//
//  PWVideoPlayerView.m
//  PWVideoPlayer
//
//  Created by panwei on 2019/4/25.
//  Copyright © 2019 WeirdPan. All rights reserved.
//
@import AVFoundation;

#import "PWVideoPlayerView.h"

@implementation PWVideoPlayerView

- (AVPlayer *)player {
    return self.playerLayer.player;
}

- (void)setPlayer:(AVPlayer *)player {
    self.playerLayer.player = player;
}

// override UIView
+ (Class)layerClass {
    return [AVPlayerLayer class];
}

- (AVPlayerLayer *)playerLayer {
    return (AVPlayerLayer *)self.layer;
}

@end
