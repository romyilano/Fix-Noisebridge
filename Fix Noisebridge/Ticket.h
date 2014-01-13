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

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *ticketDescription;
@property (nonatomic, strong) NSString *tool;

@property (nonatomic, strong) NSDate *dueDate;

@property (nonatomic, strong) NSDate *createdAtDate;     // createdAt
@property (nonatomic, strong) NSDate *updatedAtDate;     // Date

@property (nonatomic, strong) NSString *dueDateText;

// to-do - set up Owner class
@property (nonatomic, strong) NSString *owner;


@end
