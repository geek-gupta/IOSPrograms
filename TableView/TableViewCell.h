//
//  TableViewCell.h
//  SimpleTable
//
//  Created by glbitm on 31/08/17.
//  Copyright © 2017 Journal Dev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *cityLabel;
@property (nonatomic, weak) IBOutlet UIImageView *cityImageView;

@end
