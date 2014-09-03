//
//  TableViewCell.h
//  student
//
//  Created by Hibrise on 03/09/14./Users/hibrise/Desktop/student/student/TableViewCell.h
//  Copyright (c) 2014 Hibrise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak,nonatomic) IBOutlet UILabel *name;
@property (weak,nonatomic) IBOutlet UILabel *total;
@property (weak,nonatomic) IBOutlet UILabel *average;
@property (weak,nonatomic) IBOutlet UILabel *mark1;
@property (weak,nonatomic) IBOutlet UILabel *mark2;
@property (weak,nonatomic) IBOutlet UILabel *mark3;
@property (weak,nonatomic) IBOutlet UILabel *mark4;
@property (weak,nonatomic) IBOutlet UILabel *mark5;
@end
