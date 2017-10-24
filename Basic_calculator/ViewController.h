//
//  ViewController.h
//  Calculator_gaurav
//
//  Created by glbitm on 08/08/17.
//  Copyright © 2017 glbitm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNUm;

@property (weak, nonatomic) IBOutlet UITextField *secondNum;


@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *sub;
@property (weak, nonatomic) IBOutlet UIButton *mul;
@property (weak, nonatomic) IBOutlet UIButton *div;
@property (weak, nonatomic) IBOutlet UITextField *resultTextField;

@end

