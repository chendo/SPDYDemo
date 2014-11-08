//
//  LoadTableViewCell.h
//  SPDY Demo
//
//  Created by Jack Chen on 8/11/2014.
//  Copyright (c) 2014 Sproutcube. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoadTableViewCell : UITableViewCell

@property (nonatomic, strong) NSDate *requestStartTime;

- (void)startRequest:(BOOL)useSPDY;

@end
