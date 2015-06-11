//
//  FISPlayingCardDeck.m
//  BlackJack
//
//  Created by Leo Kwan on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISPlayingCardDeck.h"

@implementation FISPlayingCardDeck



-(FISPlayingCard *) drawRandomCard {
   
    int randomIndex = arc4random_uniform([self.cards count]);
    FISPlayingCard *randomCard = self.cards[randomIndex];
    [self.cards removeObject:randomCard];
    return randomCard;
    
}


-(instancetype) init {
   
    self = [super init];
    
    if (self) {
        _cards = [self createDeck];
    }
    
    return self;
}


-(NSMutableArray *) createDeck {
    
    NSMutableArray *newDeck = [[NSMutableArray alloc] init];
    
    NSArray *validSuits = @[@"♥", @"♠", @"♣",  @"♦"];
    NSArray *validRanks = @[@1, @2 , @3 , @4, @5, @6, @7, @8, @9, @10, @11, @12, @13];
    
    for (NSInteger i = 0; i < validSuits.count; i++) {
        for (NSInteger j = 0; j < 13; j++) { // suit loop
            FISPlayingCard *card = [[FISPlayingCard alloc] initWithSuit:validSuits[i] rank:validRanks[j]];
            [newDeck addObject:card];
        }
        
    }
    return newDeck;
}




@end
