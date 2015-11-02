//
//  ViewController.m
//  DebugDemoObjC
//
//  Created by Sebastian Ludwig on 02.11.15.
//  Copyright © 2015 Sebastian Ludwig. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)refresh
{
    [self.tableView reloadData];
}

- (NSInteger)complicatedComputationOfNumberOfRows
{
    return 40;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger numberOfRows = [self complicatedComputationOfNumberOfRows];
    
    return numberOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    
    return cell;
}

@end
