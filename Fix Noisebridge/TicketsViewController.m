//
//  TicketsViewController.m
//  Fix Noisebridge
//
//  Created by Romy Ilano on 1/12/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import "TicketsViewController.h"
#import "TicketTableViewCell.h"
#import "Ticket.h"
#import <Parse/Parse.h>


@interface TicketsViewController ()
@property (nonatomic, strong) NSArray *tools;
@property (nonatomic, strong) NSArray *tickets;
@end

@implementation TicketsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self getTicketsFromParse];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.tickets.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TicketTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TicketCell" forIndexPath:indexPath];
    
    // Configure the cell...
    Ticket *currentTicket = self.tickets[indexPath.row];
    
    cell.titleLabel.text = currentTicket.title;
    cell.toolLabel.text = currentTicket.tool;
    cell.descriptionLabel.text = currentTicket.ticketDescription;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Custom Methods
-(void)getTicketsFromParse
{
    PFQuery *query = [PFQuery queryWithClassName:@"Ticket"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        
        if (!error)
        {
            NSMutableArray *workingArray = [[NSMutableArray alloc] initWithCapacity:objects.count];
            for (NSDictionary *ticketRaw in objects)
            {
                Ticket *ticket = [[Ticket alloc] init];
                ticket.ticketDescription = [ticketRaw objectForKey:@"ticketDescription"];
                ticket.title = [ticketRaw objectForKey:@"title"];
                [workingArray addObject:ticket];
            }
            
            self.tickets = [workingArray copy];
            [self.tableView reloadData];
        }
        else
        {
            // log details of failure
            NSLog(@"Eror: %@ %@", error, [error userInfo]);
        }
    }];

}
- (IBAction)homeBarButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"undWindToMainSegueID" sender:self];
}
@end
