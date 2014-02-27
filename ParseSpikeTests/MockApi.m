//
//  MockApi.m
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import "MockApi.h"

@implementation MockApi
@synthesize delegate;

- (NSArray *)fetchActivityTypes {
    return self.mockObjects;
}
- (void)fetchActivityTypesUsingDelegate {
    
}
@end
