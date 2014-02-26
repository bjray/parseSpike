//
//  Activity.m
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import "Activity.h"

@implementation Activity

- (id)init {
    return [self initWithName:@"New Activity" objectId:@"n/a"];
}

- (id)initWithName:(NSString *)name objectId:(NSString *)objectId {
    self = [super init];
    if (self) {
        self.name = name;
        self.objectId = objectId;
    }
    
    return self;
}

@end
