//
//  HypnosisView.m
//  Hypnosister
//
//  Created by JIAN WANG on 5/17/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    CGRect bound = self.bounds;
    CGPoint center;
    center.x = bound.origin.x + bound.size.width / 2.0;
    center.y = bound.origin.y + bound.size.height / 2.0;
    
//    float radius = MIN(bound.size.width, bound.size.height) / 2;
    float maxRadius = hypot(bound.size.width, bound.size.height) / 2;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path addArcWithCenter:center radius:radius startAngle:0 endAngle:M_PI * 2 clockwise:YES];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    }
    
    path.lineWidth = 10;
    
    [[UIColor lightGrayColor] setStroke];
    
    [path stroke];
}


@end
