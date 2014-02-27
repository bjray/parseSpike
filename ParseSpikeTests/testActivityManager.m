//
//  testActivityManager.m
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "ActivityManager.h"
#import "DataFetching.h"
#import "ParseApi.h"

@interface testActivityManager : XCTestCase
@property (nonatomic,retain) ActivityManager *manager;
@end

@implementation testActivityManager

- (void)setUp
{
    [super setUp];
    self.manager = [[ActivityManager alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.manager = nil;
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    id myMock = [OCMockObject mockForClass:[ParseApi class]];
}

@end
