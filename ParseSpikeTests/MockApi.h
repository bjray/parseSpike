//
//  MockApi.h
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataFetching.h"

@interface MockApi : NSObject <DataFetching>
@property (nonatomic, retain) NSArray *mockObjects;
@end
