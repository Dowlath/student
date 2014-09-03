//
//  tableViewController.m
//  student
//
//  Created by Hibrise on 02/09/14.
//  Copyright (c) 2014 Hibrise. All rights reserved.
//

#import "tableViewController.h"
#import "ViewController.h"
#import "details.h"
#import "TableViewCell.h"

@interface tableViewController ()
{
    ViewController *viewobj;
    details *detobj;
     NSMutableString *string;
    
//static NSString *CellIdentifier=@"Cell";
        


}

@end

@implementation tableViewController
//static NSString *CellIdentifier=@"Cell";

@synthesize arrayobj;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    viewobj=[[ViewController alloc]init];
    detobj=[[details alloc]init];
    string=[NSMutableString string];
    
   
    //[self.tableview registerNib:[UINib nibWithNibName:@"TableViewCell"bundle:nil] forCellReuseIdentifier:@"Cell"];

    //[self.tableview setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayobj count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Cell";
    TableViewCell *cell=(TableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];


    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];

    }
       detobj=[arrayobj objectAtIndex:indexPath.row                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ];
    NSMutableArray *get=[detobj marks];
    //NSString *get1=[get objectAtIndex:0];

    NSLog(@"===>%@", get);
    cell.name.text=detobj.name;
    cell.total.text=detobj.total;
    cell.average.text=detobj.average;

    cell.mark1.text=[get objectAtIndex:0];
     cell.mark2.text=[get objectAtIndex:1];
     cell.mark3.text=[get objectAtIndex:2];
     cell.mark4.text=[get objectAtIndex:3];
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
