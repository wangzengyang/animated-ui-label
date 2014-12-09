//
//  ViewController.m
//  AnimatedLabel
//
//  Created by Anders Borum on 15/11/14.
//  Copyright (c) 2014 Anders Borum. All rights reserved.
//

#import "ViewController.h"
#import "AnimView.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController


- (void)easingAnim {
    [UIView animateWithDuration:2 animations:^{
        self.label.text = @"400 apples";
        self.label.center = CGPointMake(self.label.center.x, 400);
    }];
}

- (void)springAnim {
    [UIView animateWithDuration:3 delay:0
         usingSpringWithDamping:0.4 initialSpringVelocity:-1 options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.label.text = @"100 apples";
                         self.label.center = CGPointMake(self.label.center.x, 100);
                     } completion:nil];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    // wait between animations to make it easier to follow
    [self performSelector:@selector(easingAnim) withObject:nil afterDelay:2];
    [self performSelector:@selector(springAnim) withObject:nil afterDelay:5];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
