//
//  WebViewController.h
//  Fix NB
//
//  Created by Romy Ilano on 1/9/14.
//  Copyright (c) 2014 Romy Ilano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) NSString *urlAsString;
@property (weak, nonatomic) NSString *testString;
@end
