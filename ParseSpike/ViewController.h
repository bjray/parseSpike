//
//  ViewController.h
//  ParseSpike
//
//  Created by B.J. Ray on 2/26/14.
//  Copyright (c) 2014 109Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa/ReactiveCocoa.h>

@interface ViewController : UIViewController

- (IBAction)topBtnHandler:(id)sender;
- (IBAction)bottomBtnHandler:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *blockingLabel;

@property (weak, nonatomic) IBOutlet UITextView *topTextView;
@property (weak, nonatomic) IBOutlet UITextView *bottomTextView;

@end
