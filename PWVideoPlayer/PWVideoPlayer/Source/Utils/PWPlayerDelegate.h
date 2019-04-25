//
//  PWPlayerDelegate.h
//  PWVideoPlayer
//
//  Created by apple on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    //play begin
    PWPlayStatusBegin,
    //play end
    PWPlayStatusEnd,
    //play fail
    PWPlayStatusFail,
    //play pause
    PWPlayStatusPause,
    //play unkown
    PWPlayStatusUnkown,
} PWPlayStatus;



@protocol PWPlayerDelegate <NSObject>

@optional
-(void)PWPlayStatusChange:(PWPlayStatus)status;

@end


NS_ASSUME_NONNULL_END
