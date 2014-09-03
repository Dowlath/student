//
//  tableViewController.h
//  student
//
//  Created by Hibrise on 02/09/14.
//  Copyright (c) 2014 Hibrise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong,nonatomic) NSMutableArray *arrayobj;
//@property(weak,nonatomic) IBOutlet UITableView *tableview;

@end
