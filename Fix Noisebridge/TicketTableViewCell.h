//
//  TicketTableViewCell.h
//  Fix Noisebridge
//
//  Created by Romy Ilano on 1/13/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TicketTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *toolLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
