//
//  PWPlayer.m
//  PWVideoPlayer
//
//  Created by apple on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import "PWPlayer.h"


@interface PWPlayer()

@property(nonatomic,strong) AVPlayer *player;

@property(nonatomic,strong) AVPlayerItem *playItem;

@property(nonatomic,strong) AVPlayerLayer *playerLayer;




@end

@implementation PWPlayer

//static PWPlayer *instance = nil;
//
//+(PWPlayer *)shared{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        instance = [[PWPlayer alloc]init];
//    });
//    return instance;
//
//}
//+(id)allocWithZone:(struct _NSZone *)zone{
//    return  [PWPlayer shared];
//}
//- (id)copy{
//    return [PWPlayer shared];
//}

-(void)playWithUrl:(NSString *)urlStr playView:(UIView *)playView{
    
    if(playView == nil || urlStr == nil || urlStr.length <= 0){
        return;
    }
    [self removeObservers];
    self.playItem = [self getPlayItemWithUrl:urlStr];
    if (_playItem != nil) {
        [self addObservers];
    }
    self.player = [AVPlayer playerWithPlayerItem:self.playItem];
    self.playerLayer = [self getPlayLayerWithLayer:playView];

    [self.player play];

}



-(AVPlayerItem *)getPlayItemWithUrl:(NSString *)urlStr{
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:urlStr]]; 
    if(self.playItem == item){
        return self.playItem;
    }
    return item;
}

-(AVPlayerLayer *)getPlayLayerWithLayer:(UIView *)playview {
    AVPlayerLayer *playlayer  = [AVPlayerLayer playerLayerWithPlayer:self.player];
    playlayer.frame = playview.layer.bounds;
    playlayer.backgroundColor = [[UIColor blueColor] CGColor];
    playlayer.videoGravity = AVLayerVideoGravityResize;
    [playview.layer addSublayer:playlayer];
    return playlayer;
}

-(void)addObservers{
    [self.playItem addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:nil];
    [self.playItem addObserver:self forKeyPath:@"loadedTimeRanges" options:NSKeyValueObservingOptionNew context:nil];

    
    
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"status ......%@",keyPath);

    if ([keyPath isEqualToString: @"status"]) {
        NSLog(@"status ......11111");
        if (self.playItem){
            NSLog(@"status ......222222");
            AVPlayerItemStatus status = self.playItem.status;
            PWPlayStatus pwstatus = PWPlayStatusUnkown;
            if(status == AVPlayerItemStatusReadyToPlay) {
                NSLog(@"status ......readytoplay");
                pwstatus = PWPlayStatusBegin;
            }
            else if(status == AVPlayerItemStatusFailed) {
                NSLog(@"status ......failed");
                pwstatus = PWPlayStatusFail;
            }
            if (self.delegate != nil && [self.delegate  respondsToSelector:@selector(PWPlayStatusChange:)])
            {
                [self.delegate PWPlayStatusChange:pwstatus];
            }

        }
        
        
        
        
        
    }
    else if ([keyPath isEqualToString: @"loadedTimeRanges"]){
        ///计算视频缓存速度,可自行实现具体效果
        //            let loadedTimeRanges = self.player?.currentItem?.loadedTimeRanges
        //            let timeRange = loadedTimeRanges?.first?.timeRangeValue
        //
        //            let startSeconds = CMTimeGetSeconds((timeRange?.start)!)
        //            let durationSeconds = CMTimeGetSeconds((timeRange?.duration)!)
        //            let result = startSeconds + durationSeconds
        //            print(result)
    }
    
    
    
    
}



-(void)removeObservers{
    
    
    
}





@end
