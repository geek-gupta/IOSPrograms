//
//  ViewController.m
//  Contacts
//
//  Created by glbitm on 17/08/17.
//  Copyright © 2017 glbitm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    holderAray= [[NSMutableArray alloc]init];
    charArray = [[NSMutableArray alloc]init];
    
    contactArray =[[NSMutableArray alloc]initWithObjects:
                  @"Gaurav",@"Saurav",@"Shailesh",@"Rahul",
                  @"Ram Tayal",@"Abhishek",@"Swati",@"Dhawal"
                  ,@"Harsh",@"Megha",@"Mayank",@"Sahil", nil];

    for(char c = 'A';c<='Z';c++){
        str = [NSString stringWithFormat:@"%c",c];
         predicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] %@",str];
        result = [contactArray filteredArrayUsingPredicate:predicate];
        if(result.count > 0){
            [charArray addObject:str];
            [holderAray addObject:result];
        }
    }
    NSLog(@"%@",holderAray);
    NSLog(@"%@",charArray);
//
//    NSSortDescriptor *valueDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"description" ascending:YES];
//    
//     contactArray = [contactArray sortedArrayUsingDescriptors:@[valueDescriptor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -Table View Data Source

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"%lu",(unsigned long)[[holderAray objectAtIndex:section] count]);
    return [[holderAray objectAtIndex:section] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"SimpleTableID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:cellId];
    }
    NSString *stringForCell;
    
    stringForCell = [[holderAray objectAtIndex:indexPath.section]objectAtIndex:indexPath.row];
    [cell.textLabel setText:stringForCell];
    return cell;

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return holderAray.count;
}



- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:
(NSInteger)section{
    NSString *headerTitle;
    headerTitle = [charArray objectAtIndex:section];
    return headerTitle;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%ld Row:%ld selected and its data is %@",
          (long)indexPath.section,(long)indexPath.row,cell.textLabel.text);
}


@end
