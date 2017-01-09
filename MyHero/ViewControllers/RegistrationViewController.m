//
//  RegistrationViewController.m
//  MyHero
//
//  Created by Alex Schlamp on 1/8/17.
//  Copyright © 2017 Alex Schlamp. All rights reserved.
//

#import "RegistrationViewController.h"
#import "AppDelegate.h"

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SignUpLater:(id)sender
{
    [self updateRegistrationStatus];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"TabBarNavigation"];
    
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.window.rootViewController = vc;
}

- (IBAction)FBSignInPressed:(id)sender
{
    [self updateRegistrationStatus];
}

- (IBAction)GoogleSignInPressed:(id)sender
{
    [self updateRegistrationStatus];
}

- (void)updateRegistrationStatus
{
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"HasRegistered"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
