//
//  RemoteResourceTableViewController.m
//  SPDY Demo
//
//  Created by Jack Chen on 8/11/2014.
//  Copyright (c) 2014 Sproutcube. All rights reserved.
//

#import "RemoteResourceTableViewController.h"
#import "LoadTableViewCell.h"

@interface RemoteResourceTableViewController ()

@end

@implementation RemoteResourceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.useSPDY ? @"With SPDY" : @"Without SPDY";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 500;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LoadTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    [cell startRequest:self.useSPDY];
    
    return cell;
}

@end
