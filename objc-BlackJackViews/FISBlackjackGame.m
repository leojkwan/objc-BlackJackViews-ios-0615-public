//
//  FISBlackJackGame.m
//  BlackJack
//
//  Created by Leo Kwan on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISBlackjackGame.h"


@implementation FISBlackjackGame


// should initialize playingCardDeck with a new deck, set handScore and isBusted to default values
- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        _playingCardDeck = [[FISPlayingCardDeck alloc] init];
        _handScore = @0; // NSNumber
        _isBusted = NO;
        _hand = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSNumber *)handScore //overriding handsScore getter
{
    NSInteger total = 0;
    for(FISPlayingCard *card in self.hand) {
        total += [card.rank integerValue];
    }
    return @(total);
}

// should deal 2 new cards and add those cards to the hand.

-(void) drawCard{
    [self.hand addObject:[self.playingCardDeck drawRandomCard]];
}


- (void ) deal {
    [self drawCard];
    [self drawCard];

}

// should deal one additional card and add it card to the hand.
- (void)hit {
    
    if ([self.handScore integerValue] >= 21 ) {
        // how do I make you do nothing?
        ;
    } else {
        [self drawCard];
    }
}


-(BOOL) isBusted {
    if ([self.handScore integerValue] > 21) {
        self.isBusted = YES;
        return YES;
    }
    return NO;
}

-(BOOL) isBlackjack {
    if ([self.handScore integerValue] == 21) {
        return YES;
    }
    return NO;
}

























@end
