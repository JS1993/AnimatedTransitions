//
//  ViewController.m
//  Animated transitions
//
//  Created by  江苏 on 16/4/24.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

static int i=0;

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    i=(i++)%3+1;
    
    //转场动画
    CATransition* anim=[CATransition animation];
    
    anim.type=@"pageCurl";
    
    anim.duration=2;
    
    UIImage* image=[UIImage imageNamed:[NSString stringWithFormat:@"%d",i]];
    
    _imageV.image=image;
    
    [_imageV.layer addAnimation:anim forKey:nil];
}

@end
