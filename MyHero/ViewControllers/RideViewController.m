//
//  RideViewController.m
//  MyHero
//
//  Created by Alex Schlamp on 1/8/17.
//  Copyright © 2017 Alex Schlamp. All rights reserved.
//

#import "RideViewController.h"
#import "Transit_Item.h"
#import "TransitTableViewCell.h"

@interface RideViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) Transit_Item *item;

@end

@implementation RideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.item = [[Transit_Item alloc] init];
    
    // Test data
    [self.item setCost:@"FREE"];
    [self.item setTime:@"5m"];
    [self.item setDescriptionString:@"Friend near by"];
    [self.item setImageURL:@"http://2.bp.blogspot.com/-WWQxbHeNXoY/U5Xlznht98I/AAAAAAAAINI/mUXQVWG-t0s/s1600/beer-smiley.png"];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TransitTableViewCell" bundle:nil] forCellReuseIdentifier:@"TransitTableViewCell"];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableView Data Source Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 76.0f;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"TransitTableViewCell";
    
    TransitTableViewCell *cell = (TransitTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[TransitTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    [cell updateCell:self.item];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
@end
