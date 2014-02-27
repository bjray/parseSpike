//
//  DataFetching.h
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParseApiDelegate.h"

@protocol DataFetching <NSObject>
@property (nonatomic, weak) id<ParseApiDelegate> delegate;

- (NSArray *)fetchActivityTypes;
- (void)fetchActivityTypesUsingDelegate;
- (id)init;
@end
