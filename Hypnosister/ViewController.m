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
    
    CGRect screenRect = self.view.bounds;
    CGRect bigrect = screenRect;
//    bigrect.size.height *= 2;
    bigrect.size.width *= 2;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [self.view addSubview:scrollView];
    
    HypnosisView *hypnosisView = [[HypnosisView alloc] initWithFrame:screenRect];
    hypnosisView.backgroundColor = [UIColor clearColor];
    [scrollView addSubview:hypnosisView];
    
    screenRect.origin.x += screenRect.size.width;
    HypnosisView *secondScrollView = [[HypnosisView alloc] initWithFrame:screenRect];
    secondScrollView.backgroundColor = [UIColor clearColor];
    [scrollView addSubview:secondScrollView];
    
    scrollView.contentSize = bigrect.size;
    scrollView.pagingEnabled = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
