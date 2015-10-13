//
//  ViewController.m
//  shareDemo
//
//  Created by 王方正 on 15/10/13.
//  Copyright (c) 2015年 王方正. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor orangeColor];
    button.frame = CGRectMake(100, 100, 100, 50);
    [self.view addSubview:button];
    [button setTitle:@"分享" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(shareClick) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)shareClick
{

    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:@"561cbb4ce0f55a8e7b00262e"
                                      shareText:@"你要分享的文字"
                                     shareImage:[UIImage imageNamed:@"icon.png"]
                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToTencent,UMShareToRenren,nil]
                                       delegate:nil];
    
}

@end
