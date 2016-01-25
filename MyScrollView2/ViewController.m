//
//  ViewController.m
//  MyScrollView2
//
//  Created by Benson Huynh on 2016-01-25.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView = [[MyScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width-100,300);
    self.scrollView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.scrollView];
    
    UIView* redBox = [[UIView alloc] initWithFrame: CGRectMake(20, 20, 100, 100)];
    redBox.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview: redBox];
    
    UIView* greenBox = [[UIView alloc] initWithFrame: CGRectMake(150, 150, 150, 200)];
    greenBox.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview: greenBox];
    
    UIView* blueBox = [[UIView alloc] initWithFrame: CGRectMake(40, 400, 200, 150)];
    blueBox.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview: blueBox];

    UIView* yellowBox = [[UIView alloc] initWithFrame: CGRectMake(100, 600, 180, 150)];
    yellowBox.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview: yellowBox];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
