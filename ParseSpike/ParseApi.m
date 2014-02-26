//
//  ParseApi.m
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import "ParseApi.h"
#import "Activity.h"

@implementation ParseApi


//Parse call made off main thread and calling back via delegate...
- (void)fetchActivityTypesUsingDelegate {
    PFQuery *query = [PFQuery queryWithClassName:@"ActivityType"];
    [query whereKey:@"isActive" equalTo:@YES];
    
    
    __block NSArray *results = [NSArray array];
    NSLog(@"result count: %d", results.count);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSError *error;
        results = [query findObjects:&error];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.delegate resultsFromParse:results];
        });
        
    });
}

//Parse call made on Main Thread...
- (NSArray *)fetchActivityTypes {
    PFQuery *query = [PFQuery queryWithClassName:@"ActivityType"];
    [query whereKey:@"isActive" equalTo:@YES];
    
    NSError *error;
    return [query findObjects:&error];
}

@end
