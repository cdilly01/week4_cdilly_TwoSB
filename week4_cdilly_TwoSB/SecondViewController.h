//
//  SecondViewController.h
//  week4_cdilly_TwoSB
//
//  Created by A Student on 6/9/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *secondTableView;

- (NSInteger)tableView:(UITableView *)secondTableView
       numberOfRowsInSection:(NSInteger)section;
@end
