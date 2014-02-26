//
//  ActivityManager.m
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import "ActivityManager.h"
#import <ReactiveCocoa/ReactiveCocoa/ReactiveCocoa.h>
#import "ParseApi.h"

@interface ActivityManager()
@property (nonatomic, strong) ParseApi *api;
@end

@implementation ActivityManager

- (id)init {
    self = [super init];
    if (self) {
        self.api = [[ParseApi alloc] init];
        self.api.delegate = self;
        self.someActivities = [NSArray array];
    }
    
    return self;
}

//#######################################################
// Example of using a delegate and using RACObserver in
//  VC to keep RAC out of multiple classes...
//#######################################################
- (void)fetchActivityTypesUsingDelegate {
    [self.api fetchActivityTypesUsingDelegate];
}

- (void)resultsFromParse:(NSArray *)objects {
    NSLog(@"you called the delegate method!!!!");
    self.someActivities = objects;
}

//#######################################################
//
//#######################################################
- (RACSignal *)fetchActivityTypes {
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//        NSArray *myArray = [NSArray array];
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            
            NSArray *myArray = [self.api fetchActivityTypes];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [subscriber sendNext:myArray];
            });
        });
        
        return [RACDisposable disposableWithBlock:^{
            NSLog(@"nothing to dispose");
        }];
    }];
}


@end
