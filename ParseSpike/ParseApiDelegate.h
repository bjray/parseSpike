//
//  ParseApiDelegate.h
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ParseApiDelegate <NSObject>
- (void)resultsFromParse:(NSArray *)objects;

@end
