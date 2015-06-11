//
//  FISPlayingCard.m
//  BlackJack
//
//  Created by Leo Kwan on 6/10/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISPlayingCard.h"

@implementation FISPlayingCard

// default initializer
-(instancetype)init{
    return [self initWithSuit:@"" rank:@0];
}


-(instancetype) initWithSuit:(NSString *)suit rank:(NSNumber*) rank {

    self = [super init];
    
    if (self ) {
        _suit = [self validateSuit:suit]; // this is chaining method 
        _rank = [self validateRanks:rank];
    }
    return self;
}

// override suit setter method
-(void)setSuit:(NSString *)suit {
    _suit = [self validateSuit:suit];
}

-(void)setRank:(NSNumber *)rank {
    _rank = [self validateRanks:rank];
}

// suit checker method that used to override setter
-(NSString *)validateSuit:(NSString *)suit {
    NSArray *validSuits = @[@"♥", @"♠", @"♣",  @"♦"];
    for(NSString *validSuit in validSuits) {
        if ([suit isEqualToString:validSuit]) {
            return suit;
        }
        
    }
    return @"";
}

// suit checker method that used to override rank
    -(NSNumber *) validateRanks:(NSNumber *)rank {
        NSArray *validRanks = @[@1, @2 , @3 , @4, @5, @6, @7, @8, @9, @10, @11, @12, @13];
        for (NSNumber *validRank in validRanks) {
            if ([rank integerValue] == [validRank integerValue]) {
                return rank;
                break;
            }
        }
        return @0;
    }




@end
