//
//  TransitTableViewCell.h
//  MyHero
//
//  Created by Alex Schlamp on 1/8/17.
//  Copyright © 2017 Alex Schlamp. All rights reserved.
//

#import "Transit_Item.h"

@interface TransitTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *costLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageIcon;

- (void)updateCell:(Transit_Item *)item;

@end
