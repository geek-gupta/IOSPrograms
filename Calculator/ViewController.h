//
//  ViewController.h
//  Basic_calculator
//
//  Created by glbitm on 10/08/17.
//  Copyright © 2017 glbitm. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum{ Plus,Minus,Multiply,Divide,Modulus} CalcOperation;

@interface ViewController : UIViewController{
    IBOutlet UITextField *display;
    IBOutlet UIButton *cbutton;
    NSString *storage;
    CalcOperation operation;
}
    - (IBAction) button1;
    - (IBAction) button2;
    - (IBAction) button3;
    - (IBAction) button4;
    - (IBAction) button5;
    - (IBAction) button6;
    - (IBAction) button7;
    - (IBAction) button8;
    - (IBAction) button9;
    - (IBAction) button0;
    - (IBAction) plusbutton;
    - (IBAction) minusbutton;
    - (IBAction) multiplybutton;
    - (IBAction) dividebutton;
    - (IBAction) modbutton;
    - (IBAction) equalsbutton;
    - (IBAction) clearDisplay;
@end

