//
//  LoadTableViewCell.m
//  SPDY Demo
//
//  Created by Jack Chen on 8/11/2014.
//  Copyright (c) 2014 Sproutcube. All rights reserved.
//

#import "LoadTableViewCell.h"

@implementation LoadTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setLabel:(NSString *)string {
    dispatch_async(dispatch_get_main_queue(), ^{
        self.textLabel.text = string;
    });
}

- (void)startRequest:(BOOL)useSPDY {
    [self setLabel:@"Loading..."];
    NSDate *startTime = [NSDate date];
    
    NSURL *url;
    NSURLSession *session = [NSURLSession sharedSession];
    if (useSPDY) {
        url = [NSURL URLWithString:@"https://spdy-up.test:44300/data.json"];
    } else {
        url = [NSURL URLWithString:@"https://spdy-up.test:44301/data.json"];
    }
    
    [[session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            [self setLabel:[error description]];
            NSLog(@"Error requesting: %@", error);
        } else {
            NSTimeInterval duration = fabs([startTime timeIntervalSinceNow]);
            [self setLabel:[NSString stringWithFormat:@"Duration: %.3fms", duration * 1000]];
        }
    }] resume];
}


@end
