//
//  ViewController.m
//  student
//
//  Created by Guest User on 8/28/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "details.h"
#import "tableViewController.h"

@interface ViewController ()
{
    
    NSMutableArray *newobj;
    details *obj;
    tableViewController *wc ;
   }
@end

@implementation ViewController
@synthesize name,mark1,mark2,mark3,mark4,mark5,total,average;

- (void)viewDidLoad
{
    name.delegate=self;
    mark1.delegate=self;
    mark2.delegate=self;
    mark3.delegate=self;
    mark4.delegate=self;
    mark5.delegate=self;
  
    
    newobj=[[NSMutableArray alloc]init];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    obj=[[details alloc]init];
        obj.marks=[[NSMutableArray alloc]init];
    obj.name=name.text;
    obj.total=total.text;
    obj.average=average.text;
//    [obj.marks addObject:name.text];
//    [obj.marks addObject:average.text];
//    [obj.marks addObject:total.text];
    [obj.marks addObject:mark1.text];

    [obj.marks addObject:mark2.text];

    [obj.marks addObject:mark3.text];

    [obj.marks addObject:mark4.text];

    [obj.marks addObject:mark5.text];

    [newobj addObject:obj];
    NSLog(@"Array descr---> %d",[newobj count]);

}

- (IBAction)calc:(id)sender {
    int inp1,inp2,inp3,inp4,inp5,tot;
    float avg;
    inp1=[[mark1 text]intValue];
    inp2=[[mark2 text]intValue];
    inp3=[[mark3 text]intValue];
    inp4=[[mark4 text]intValue];
    inp5=[[mark5 text]intValue];
    tot=inp1+inp2+inp3+inp4+inp5;
    avg=tot/5;
    [total setText:[NSString stringWithFormat:@"%d",tot]];
      [average setText:[NSString stringWithFormat:@"%g",avg]];
    
}

- (IBAction)view:(id)sender {
//    NSMutableString *string=[NSMutableString string];
//    
//    details *get=[newobj objectAtIndex:0];
//    [string appendString:[NSString stringWithFormat:@"%@\n",get.name]];
//[string appendString:[NSString stringWithFormat:@"%@\n",get.total]];
//    [string appendString:[NSString stringWithFormat:@"%@\n",get.average]];
//    _display.text=string;
//    NSMutableArray *get1=[get marks];
//    for (int i=0; i<[get1 count]; i++) {
//        [string appendString:[NSString stringWithFormat:@"%@\n",[get1 objectAtIndex:i ]]];
//        NSLog(@"%@",[get1 objectAtIndex:i ]);
//        _display.text=string;
   // }
    
    
    
    wc = [[tableViewController alloc]init];
    
    wc = [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil] instantiateViewControllerWithIdentifier:@"tableViewController"];
    [wc setArrayobj:newobj];
        [self.navigationController pushViewController:wc animated:YES];
    

      }
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}
@end
