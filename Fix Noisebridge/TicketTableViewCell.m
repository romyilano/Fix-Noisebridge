//
//  TicketTableViewCell.m
//  Fix Noisebridge
//
//  Created by Romy Ilano on 1/13/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import "TicketTableViewCell.h"

@implementation TicketTableViewCell

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

@end
