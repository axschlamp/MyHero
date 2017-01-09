//
//  HeroBaseViewController.m
//  MyHero
//
//  Created by Alex Schlamp on 1/8/17.
//  Copyright © 2017 Alex Schlamp. All rights reserved.
//

#import "HeroBaseViewController.h"

@interface HeroBaseViewController ()

@end

@implementation HeroBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if([self respondsToSelector:@selector(edgesForExtendedLayout)])
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
