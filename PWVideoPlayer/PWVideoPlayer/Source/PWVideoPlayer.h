//
//  PWVideoPlayer.h
//  PWVideoPlayer
//
//  Created by panwei on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PWVideoPlayer : NSObject
+ (instancetype)playVideoWithURL:(NSString *)remoteURL inViewController:(UIViewController *)superViewController frame:(CGRect)frame;
@end

NS_ASSUME_NONNULL_END
