//
//  ViewController.m
//  imageTextButton
//
//  Created by 李根 on 16/7/8.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [_upBtn setButtonTitleWithImageAlignment:(UIButtonTitleWithImageAlignmentDown)];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
