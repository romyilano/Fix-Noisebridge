//
//  CreateTicketViewController.m
//  Fix NB
//
//  Created by Romy Ilano on 1/10/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import "CreateTicketViewController.h"
#import "Ticket.h"
#import "TicketsViewController.h"
#import <Parse/Parse.h>

@interface CreateTicketViewController ()

@end

@implementation CreateTicketViewController

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
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   
}

#pragma mark - Action
- (IBAction)submitButtonPressed:(id)sender {
    
    PFObject *newTicket = [PFObject objectWithClassName:@"Ticket"];
    [newTicket setObject:self.titleTextField.text forKey:@"title"];
    [newTicket setObject:self.repairObjectTextField.text forKey:@"tool"];
    [newTicket setObject:self.authorTextField.text forKey:@"author"];
    [newTicket setObject:self.detailsTextView.text forKey:@"ticketDescription"];
    
    [newTicket saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error)
        {
            [self performSegueWithIdentifier:@"CreatedTicketSegue" sender:self];
            // [self performSegueWithIdentifier:@"UnWindToMainSegueID" sender:self];
        }
    }];
}
@end
