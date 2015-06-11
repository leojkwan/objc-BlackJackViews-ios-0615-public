//
//  FISPlayingCardDeck.h
//  BlackJack
//
//  Created by Leo Kwan on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISPlayingCard.h"

@interface FISPlayingCardDeck : NSObject

@property (strong, nonatomic)NSMutableArray *cards;

-(FISPlayingCard *)drawRandomCard;

-(instancetype) init;

@end
