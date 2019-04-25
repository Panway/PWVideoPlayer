//
//  PWPlayer.h
//  PWVideoPlayer
//
//  Created by apple on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>
#import "PWPlayerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface PWPlayer : NSObject
@property(nonatomic,weak) id<PWPlayerDelegate> delegate;



//+(PWPlayer *)shared;
-(void)playWithUrl:(NSString *)urlStr playView:(UIView *)playView;
@end

NS_ASSUME_NONNULL_END
