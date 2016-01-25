//
//  MyScrollView.m
//  MyScrollView2
//
//  Created by Benson Huynh on 2016-01-25.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _panWithFinger = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panned:)];
        [self addGestureRecognizer:_panWithFinger];
    }
    return self;
}

-(void) panned:(UIPanGestureRecognizer *) panGesture {
    
    //check panned distance
    CGRect bounds = self.bounds;
    self.bounds = bounds;
    CGPoint movement = [panGesture translationInView:self];
    
    //log points
    NSLog(@"%@", panGesture);
    
    //x coordinate
    CGFloat minOriginX = 0.0;
    CGFloat movedFromOriginX = bounds.origin.x - movement.x;
//    CGFloat maxOriginX = self.contentSize.width - bounds.size.width;
    
    //y coordinate
    CGFloat minOriginY = 0.0;
    CGFloat movedFromOriginY = bounds.origin.y - movement.y;
//    CGFloat maxOriginY = self.contentSize.height - bounds.size.height;
    
    if (fabsf(movedFromOriginX) <= self.contentSize.width && fabsf(movedFromOriginY) <= self.contentSize.height) {
        self.bounds = CGRectMake(movedFromOriginX, movedFromOriginY, self.bounds.size.width, self.bounds.size.height);
        [panGesture setTranslation:CGPointMake(minOriginX, minOriginY) inView:self];
    }
}

@end
