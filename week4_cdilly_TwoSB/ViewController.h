//
//  ViewController.h
//  week4_cdilly_TwoSB
//
//  Created by A Student on 6/9/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *noteInputText;

- (IBAction)addNote:(id)sender;
- (IBAction)deleteNote:(id)sender;

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

