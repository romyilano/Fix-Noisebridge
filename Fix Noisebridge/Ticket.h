//
//  Ticket.h
//  Noisebridge
//
//  Created by Romy Ilano on 11/9/13.
//  Copyright (c) 2013 AugustRyanBrenner. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * A class representing a particular ticket on Noisebridge Fixit
 */

@interface Ticket : NSObject

@property (nonatomic, strong) NSDictionary *rawTicket;

@property (readonly, strong) NSString *title;

@property (readonly, strong) NSString *description;
@property (readonly, strong) NSString *ticketType;
@property (readonly, strong) NSString *status;
@property (readonly, strong) NSDate *dueDate;
@property (readonly, strong) NSString *dueDateText;
@property (assign, nonatomic) int complexity;

@end
