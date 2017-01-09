//
//  Transit_Item.h
//  MyHero
//
//  Created by Alex Schlamp on 1/8/17.
//  Copyright © 2017 Alex Schlamp. All rights reserved.
//

#import "Transit_Item.h"

@implementation Transit_Item

- (id)init
{
    if (self = [super init])
    {
        _time = nil;
        _descriptionString = nil;
        _cost = nil;
        _imageURL = nil;
    }
    
    return self;
}

@end
