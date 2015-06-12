//
//  SecondViewController.m
//  week4_cdilly_TwoSB
//
//  Created by A Student on 6/9/15.
//  Copyright (c) 2015 msse650. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "Note.h"
#import "NoteSvcCache.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

NoteSvcCache *secondNoteSvcCache = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    secondNoteSvcCache = [[NoteSvcCache alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Return the number of notes
- (NSInteger)tableView:(UITableView *)secondTableView numberOfRowsInSection:(NSInteger)section
{
    return [[secondNoteSvcCache retrieveAllNotes] count];
}

// Return the table cell for a paricular row (index)
- (UITableViewCell *)tableView:(UITableView *)secondTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell =
    [secondTableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:simpleTableIdentifier];
    }
    
    Note *note = [[secondNoteSvcCache retrieveAllNotes]
                  objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [note description];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
