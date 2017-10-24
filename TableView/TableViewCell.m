//
//  TableViewCell.m
//  SimpleTable
//
//  Created by glbitm on 31/08/17.
//  Copyright © 2017 Journal Dev. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell


@synthesize cityLabel = cityLabel;
@synthesize cityImageView = _cityImageView;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
