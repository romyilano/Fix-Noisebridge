//
//  WebViewController.m
//  Fix NB
//
//  Created by Romy Ilano on 1/9/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
   
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    switch (self.webView.tag)
    {
        case 1:
            self.urlAsString = @"http://www.noisebridge.net";
            break;
        default:
            self.urlAsString = @"http://www.romyilano.com";
            break;
    }
    
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:self.urlAsString]];
    [self.webView loadRequest:urlRequest];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
