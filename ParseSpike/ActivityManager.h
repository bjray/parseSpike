//
//  ActivityManager.h
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa/ReactiveCocoa.h>
#import "ParseApiDelegate.h"

@interface ActivityManager : NSObject <ParseApiDelegate>
- (RACSignal *)fetchActivityTypes;
- (void)fetchActivityTypesUsingDelegate;

@property (nonatomic, retain)NSArray *someActivities;
@end
