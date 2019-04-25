//
//  PWVideoPlayer.h
//  PWVideoPlayer
//
//  Created by panwei on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//
@import AVFoundation;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PWVideoPlayerView;

@interface PWVideoPlayer : NSObject
@property (strong,nonatomic) PWVideoPlayerView *playerView;
@property (strong,nonatomic) UISlider *timeSlider;
@property (readonly) AVPlayer *player;
@property AVURLAsset *asset;

@property CMTime currentTime;
@property (readonly) CMTime duration;
@property float rate;

@property (nonatomic, strong) UIButton *playPauseButton;
+ (instancetype)playVideoWithURL:(NSString *)remoteURL inViewController:(UIViewController *)superViewController frame:(CGRect)frame;

- (void)initVideoURL:(nullable NSString *)fileURL inViewController:(UIViewController *)superViewController frame:(CGRect)frame;


@end

NS_ASSUME_NONNULL_END
