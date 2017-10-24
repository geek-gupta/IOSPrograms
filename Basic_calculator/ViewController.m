//
//  ViewController.m
//  Calculator_gaurav
//
//  Created by glbitm on 08/08/17.
//  Copyright © 2017 glbitm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize firstNUm,secondNum,add,sub,mul,div,resultTextField;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [add addTarget:self action:@selector(addNum:)forControlEvents:
     UIControlEventTouchUpInside];
    
    [sub addTarget:self action:@selector(subNum:)forControlEvents:
     UIControlEventTouchUpInside];
    
    [mul addTarget:self action:@selector(mulNum:)forControlEvents:
     UIControlEventTouchUpInside];
    
    [div addTarget:self action:@selector(divNum:)forControlEvents:
     UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addNum:(id)sender{
    int firstNumber = [firstNUm.text intValue];
    int secondNumber = [secondNum.text intValue];
    int result = firstNumber + secondNumber;
    resultTextField.text = [NSString stringWithFormat:@"%d",result];
}

-(void)subNum:(id)sender{
    int firstNumber = [firstNUm.text intValue];
    int secondNumber = [secondNum.text intValue];
    int result = firstNumber - secondNumber;
    resultTextField.text = [NSString stringWithFormat:@"%d",result];
}

-(void)mulNum:(id)sender{
    int firstNumber = [firstNUm.text intValue];
    int secondNumber = [secondNum.text intValue];
    int result = firstNumber * secondNumber;
    resultTextField.text = [NSString stringWithFormat:@"%d",result];
    
}

-(void)divNum:(id)sender{
    int firstNumber = [firstNUm.text intValue];
    int secondNumber = [secondNum.text intValue];
    int result = firstNumber / secondNumber;
    resultTextField.text = [NSString stringWithFormat:@"%d",result];
}

@end
