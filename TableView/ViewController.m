//
//  ViewController.m
//  SimpleTable
//
//  Created by Anupam Chugh on 18/04/16.
//  Copyright © 2016 Journal Dev. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myArray = [[NSMutableArray alloc]initWithObjects:
              @"New Delhi",@"Mumbai",@"Hyderabad",
              @"Bangalore",@"Sydney",@"Melbourne",
              @"Brisbane",@"Perth",@"New York",
              @"Los Angeles",@"Chicago",@"Boston", nil];
    
    myPhotosArray = [[NSMutableArray alloc]initWithObjects:
                     @"new_delhi.jpg",@"mumbai.jpg",@"hyderabad.jpg",
                     @"banglore.jpg",@"sydeny.jpg",@"melbourne.jpg",
                     @"brisbane.jpg",@"perth.jpg",@"new_york.jpg",
                     @"los_angeles.jpg",@"chicago.jpg",@"boston.jpg",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [myArray count]/3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    static NSString *cellId = @"SimpleTableId";
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellId];
    if (cell == nil) {
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableViewCell" owner:self options:nil];
        
         cell = [nib objectAtIndex:0];
    
    }
    
    
    NSString *stringForCell;
    NSString *imageForcell;
    if (indexPath.section == 0) {
        stringForCell= [myArray objectAtIndex:indexPath.row];
        imageForcell = [myPhotosArray objectAtIndex:indexPath.row];
        
    }
    else if (indexPath.section == 1){
        stringForCell= [myArray objectAtIndex:indexPath.row+ [myArray count]/3];
        imageForcell = [myPhotosArray objectAtIndex:indexPath.row + [myPhotosArray count]/3];
        
    }
    else if (indexPath.section == 2){
        stringForCell= [myArray objectAtIndex:indexPath.row+ 2*[myArray count]/3];
        imageForcell = [myPhotosArray objectAtIndex:indexPath.row + 2*[myPhotosArray count]/3];
    }
    
    [cell.cityLabel setText:stringForCell];
    cell.cityImageView.image = [UIImage imageNamed:imageForcell];
    return cell;
}

// Default is 1 if not implemented
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 67.0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:
(NSInteger)section{
    NSString *headerTitle;
    if (section==0) {
        headerTitle = @"India";
    }
    else if(section==1){
        headerTitle = @"Australia";
        
    }
    else{
        headerTitle = @"United States of America";
    }
    return headerTitle;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:
(NSInteger)section{
    NSString *footerTitle;
    if (section==0) {
        footerTitle = @"End of prominent cities of India";
    }
    else if (section==1){
        footerTitle = @"End of prominent cities of Australia";
        
    }
    else if (section==2){
        footerTitle = @"End of prominent cities of USA";
        
    }
    return footerTitle;
}

#pragma mark - TableView delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%d Row:%d selected and its data is %@",
          indexPath.section,indexPath.row,cell.textLabel.text);
}

@end
