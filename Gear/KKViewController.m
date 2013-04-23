//
//  KKViewController.m
//  Gear
//
//  Created by 孔祥波 on 13-4-23.
//  Copyright (c) 2013年 Kong XiangBo. All rights reserved.
//

#import "KKViewController.h"

@interface KKViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *gear;
@property (strong, nonatomic) IBOutlet UIButton *actionBtn;

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *images=[NSMutableArray arrayWithCapacity:36];
    for (int i=0; i< 36; i++) {
        [images addObject:[UIImage imageNamed:[NSString stringWithFormat: @"GearAnimation%d",i]]];
    }
    _gear.animationImages = images;
    _gear.animationDuration = [_gear.animationImages count] / 30;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startStopAction:(id)sender {
    if ([_gear isAnimating]) {
        [_gear stopAnimating];
        [_actionBtn setTitle:@"Stop" forState:UIControlStateNormal];
    }else{
        [_gear startAnimating];
        [_actionBtn setTitle:@"Start" forState:UIControlStateNormal];
    }
}
@end
