//
//  ViewController.m
//  Hypnosister
//
//  Created by JIAN WANG on 5/17/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "ViewController.h"
#import "HypnosisView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    CGRect frame = CGRectMake(160, 240, 100, 150);
    CGRect frame = self.view.bounds;
    HypnosisView *firstView = [[HypnosisView alloc] initWithFrame:frame];
    firstView.backgroundColor = [UIColor clearColor];
    
//    CGRect secondFrame = CGRectMake(20, 30, 50, 50);
//    HypnosisView *secondView = [[HypnosisView alloc] initWithFrame:secondFrame];
//    secondView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:firstView];
//    [firstView addSubview:secondView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
