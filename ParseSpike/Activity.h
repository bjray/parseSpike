//
//  Activity.h
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Activity : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *objectId;

- (id)initWithName:(NSString *)name objectId:(NSString *)objectId;
@end
