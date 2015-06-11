//
//  FISPlayingCard.h
//  BlackJack
//
//  Created by Leo Kwan on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FISPlayingCard : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSNumber* rank;

-(instancetype) initWithSuit:(NSString *)suit rank:(NSNumber*)rank;


@end
