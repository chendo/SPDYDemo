//
//  IndexTableViewController.m
//  SPDY Demo
//
//  Created by Jack Chen on 8/11/2014.
//  Copyright (c) 2014 Sproutcube. All rights reserved.
//

#import "IndexTableViewController.h"
#import "RemoteResourceTableViewController.h"

@interface IndexTableViewController ()

@end

@implementation IndexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"WithSpdy"]) {
        RemoteResourceTableViewController *vc = segue.destinationViewController;
        vc.useSPDY = YES;
    } else if ([segue.identifier isEqualToString:@"WithoutSpdy"]) {
        RemoteResourceTableViewController *vc = segue.destinationViewController;
        vc.useSPDY = NO;
    }

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
