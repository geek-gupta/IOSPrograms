//
//  ViewController.h
//  Contacts
//
//  Created by glbitm on 17/08/17.
//  Copyright © 2017 glbitm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,
UITableViewDelegate>{
    
    NSMutableArray *contactArray,*holderAray,*charArray;
    NSArray *result;
    NSString *str;
    NSPredicate *predicate;
    
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

