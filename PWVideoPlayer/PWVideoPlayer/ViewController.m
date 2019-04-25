//
//  ViewController.m
//  PWVideoPlayer
//
//  Created by panwei on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//
#define USE_MENGGE 0


#import "ViewController.h"
#import "PWVideoPlayer.h"
#import "PWPLayer.h"

@interface ViewController ()
@property(nonatomic,strong)PWPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *videoUrlStr = @"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f93425c71a06e1520fe067ead30b2dea.mp4";
    
#if USE_MENGGE
    UIView * palyView = [[UIView alloc]init];
    palyView.frame = CGRectMake(20, 100, 300, 200);
    palyView.backgroundColor = UIColor.lightGrayColor;
    [self.view addSubview:palyView];
    self.player = [[PWPlayer alloc]init];
    [self.player playWithUrl:videoUrlStr playView:palyView];
#else



//    [PWVideoPlayer playVideoWithURL:videoUrlStr inViewController:self frame:CGRectMake(0, 120, 375, 200)];
    
    PWVideoPlayer *videoPlayer = [[PWVideoPlayer alloc] init];
    [videoPlayer initVideoURL:videoUrlStr inViewController:self frame:CGRectMake(0, 88, 375, 200)];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        videoPlayer.playPauseButton = [UIButton new];
    });
#endif
    //不延迟的话会被系统立马回收，无法播放
}
- (void)playPauseButtonWasPressed:(UIButton *)sender{
    NSLog(@"====");
}
- (void)playPauseButtonWasPressed2:(UIButton *)sender{
    NSLog(@"22222");
}
@end
