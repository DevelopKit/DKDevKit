//
//  DKViewController.m
//  DKDevKit
//
//  Created by qiang zhai on 08/28/2016.
//  Copyright (c) 2016 qiang zhai. All rights reserved.
//

#import <DKDevKit/UITableView+DKDevKit.h>
#import <DKDevKit/UIView+DKDevKit.h>
#import <Masonry/MASConstraintMaker.h>
#import "DKViewController.h"
#import "UITableView+DKDevKit.h"
#import <DKDevKit/UIButton+DKDevKit.h>
#import <DKDevKit/UIControl+DKDevKit.h>
@interface DKViewController ()

@end

@implementation DKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[[UIView new] addToSuperView:self.view] configure:^(UIView *v) {
        v.frame = CGRectMake(100, 100, 100, 100);
        v.backgroundColor = [UIColor blackColor];
        [v whenSingleTap:^(id x) {
            NSLog(@"tap");
        }];
        [v whenDoubleTap:^(id x) {
            NSLog(@"x = %@",x);
        }];
    }];
    
    [[[[[UIButton button] addToSuperView:self.view] configure:^(__kindof UIButton *v) {
        [v setNormalTitle:@"hit me!" titleColor:[UIColor blackColor]];
    }] layout:^(__kindof UIView *v) {
        v.frame = CGRectMake(10, 10, 100, 50);
    }] touchUpInside:^(UIControl *control) {
        NSLog(@"hit me");
    }];
    
//    [[[UITableView tableView]
//      addToSuperView:self.view]
//     configure:^(__kindof UITableView *v) {
//        v.frame = CGRectMake(50, 200, 100, 100);
//        v.backgroundColor = [UIColor redColor];
//         [v con]
//    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
