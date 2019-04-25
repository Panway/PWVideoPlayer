//
//  ViewController.m
//  PWVideoPlayer
//
//  Created by panwei on 2019/4/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

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
//    [PWVideoPlayer playVideoWithURL:@"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f93425c71a06e1520fe067ead30b2dea.mp4" inViewController:self frame:CGRectMake(0, 120, 375, 200)];
    
    UIView * palyView = [[UIView alloc]init];
    palyView.frame = CGRectMake(20, 100, 300, 200);
    palyView.backgroundColor = UIColor.lightGrayColor;
    [self.view addSubview:palyView];


    self.player = [[PWPlayer alloc]init];

[self.player   playWithUrl:@"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f93425c71a06e1520fe067ead30b2dea.mp4" playView:palyView];




}


@end
