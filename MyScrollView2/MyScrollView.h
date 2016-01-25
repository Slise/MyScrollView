//
//  MyScrollView.h
//  MyScrollView2
//
//  Created by Benson Huynh on 2016-01-25.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panWithFinger;

@end
