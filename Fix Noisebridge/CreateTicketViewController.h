//
//  CreateTicketViewController.h
//  Fix NB
//
//  Created by Romy Ilano on 1/10/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CreateTicketViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *repairObjectTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailsTextView;
@property (weak, nonatomic) IBOutlet UITextField *authorTextField;

@property (weak, nonatomic) IBOutlet UIButton *submitButton;

@end
