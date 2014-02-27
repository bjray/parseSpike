//
//  ViewController.m
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import "ViewController.h"
#import "ActivityManager.h"

@interface ViewController ()
@property (nonatomic, retain) ActivityManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.manager = [[ActivityManager alloc] init];
    // Note: Could have called initWithDataSource:<#(id<DataFetching>)#>
    
    
    [[RACObserve(self.manager, someActivities)
      deliverOn:RACScheduler.mainThreadScheduler]
     subscribeNext:^(NSArray *objects) {
         NSLog(@"Observe got a fish!");
         self.topTextView.text = [NSString stringWithFormat:@"We received %d activities", objects.count];
         self.blockingLabel.text = @"Not Blocked";
     }];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)topBtnHandler:(id)sender {
    self.blockingLabel.text = @"Blocked";
    [self.manager fetchActivityTypesUsingDelegate];
    
}

- (IBAction)bottomBtnHandler:(id)sender {
    self.blockingLabel.text = @"Blocked";
    [[self.manager fetchActivityTypes] subscribeNext:^(NSArray *activities) {
        self.bottomTextView.text = [NSString stringWithFormat:@"We received %d activities", activities.count];
        self.blockingLabel.text = @"Not Blocked";
    }];
}
@end
