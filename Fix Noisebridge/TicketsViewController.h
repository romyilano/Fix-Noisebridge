//
//  TicketsViewController.h
//  Fix Noisebridge
//
//  Created by Romy Ilano on 1/12/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TicketsViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *homeBarButton;

- (IBAction)homeBarButtonPressed:(id)sender;
@end
