//
//  PWVideoPlayerView.h
//  PWVideoPlayer
//
//  Created by panwei on 2019/4/25.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AVPlayer;

@interface PWVideoPlayerView : UIView
@property AVPlayer *player;
@property (readonly) AVPlayerLayer *playerLayer;

@end

NS_ASSUME_NONNULL_END
