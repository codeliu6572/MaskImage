//
//  ViewController.m
//  MaskImage
//
//  Created by 刘浩浩 on 16/1/26.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor grayColor];
    
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    UIImage *image=[UIImage imageNamed:@"fire.jpg"];
    imageView.userInteractionEnabled=YES;
    imageView.image=image;
    [self.view addSubview:imageView];
    
    
    UIView *layerView=[[UIView alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    [self.view addSubview:layerView];
    
    CALayer *layer=[CALayer layer];
    layer.frame=layerView.bounds;
    UIImage *maskImage=[UIImage imageNamed:@"man_center.png"];
    layer.contents=(__bridge id)maskImage.CGImage;
    imageView.layer.mask=layer;
    
    
    
    UILabel *fireMan=[[UILabel alloc]initWithFrame:CGRectMake(0, 300, 320, 200)];
    fireMan.text=@"HaHa,火焰小人炫酷吧!";
    fireMan.textColor=[UIColor blueColor];
    fireMan.textAlignment=NSTextAlignmentCenter;
    fireMan.font=[UIFont systemFontOfSize:20];
    [self.view addSubview:fireMan];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
