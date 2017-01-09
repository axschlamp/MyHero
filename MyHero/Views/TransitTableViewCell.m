//
//  TransitTableViewCell.m
//  MyHero
//
//  Created by Alex Schlamp on 1/8/17.
//  Copyright © 2017 Alex Schlamp. All rights reserved.
//

#import "TransitTableViewCell.h"
#import "SDWebImageManager.h"

@interface TransitTableViewCell ()

@end


@implementation TransitTableViewCell

- (void)updateCell:(Transit_Item *)item
{
    self.timeLabel.text = item.time;
    self.descriptionLabel.text = item.descriptionString;
    self.costLabel.text = item.cost;
    
    if (item.imageURL)
    {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            [self setImageWithURL:item.imageURL];
            
        });
    }
}

- (void)setImageWithURL:(NSString *)urlString
{
    NSURL *url = [NSURL URLWithString:urlString];
    
    SDWebImageManager *manager = [SDWebImageManager sharedManager];
    
    [manager downloadImageWithURL:url options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        // progress code here, spinner
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        if (!error && image)
        {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.imageIcon.image = image;
                // end spinner
            });
        }
    }];
}
     
@end
