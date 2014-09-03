//
//  TableViewCell.m
//  student
//
//  Created by Hibrise on 03/09/14.
//  Copyright (c) 2014 Hibrise. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize name,total,average,mark1,mark2,mark3,mark4,mark5;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:cell];
//    
//    // Configure Cell
//    [cell.label setText:[NSString stringWithFormat:@"Row %i in Section %i", [indexPath row], [indexPath section]]];
//    
//    return cell;
//}

@end
