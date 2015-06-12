//
//  FISBlackjackGameViewController.m
//  objc-BlackJackViews
//
//  Created by Leo Kwan on 6/11/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISBlackjackGameViewController.h"

@interface FISBlackjackGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *card1;
@property (weak, nonatomic) IBOutlet UILabel *card2;
@property (weak, nonatomic) IBOutlet UILabel *card3;
@property (weak, nonatomic) IBOutlet UILabel *card4;
@property (weak, nonatomic) IBOutlet UILabel *card5;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation FISBlackjackGameViewController

//-(NSString *)description {
//    return [NSString stringWithFormat:@"%@ %@", self.blackjackGame.hand  .  .hand]
//}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.blackjackGame = [[FISBlackjackGame alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hitButton:(UIButton *)sender {
    [self.blackjackGame hit];
    [self updateUI];

//    if ([self.blackjackGame.handScore integerValue] > 21) {
//        self.blackjackGame.isBusted = YES;
//        self.resultLabel.text = @"Busted";
//        [self updateUI];
//        
//    } else if ([self.blackjackGame.handScore integerValue] == 21) {
//        self.resultLabel.text = @"Blackjack";
//        [self updateUI];
//    }
    
    
}


- (IBAction)dealButton:(UIButton *)sender {
    [self.blackjackGame deal];

    
//    if ([self.blackjackGame.handScore integerValue] > 21) {

    [self updateUI];
}


// route all visual changes in here
-(void)updateUI {
    
    self.card1.text = [self.blackjackGame.hand[0] suit];
    self.card2.text = [self.blackjackGame.hand[1] suit];
    
    NSArray *cardLabel = @[self.card1, self.card2, self.card3, self.card4, self.card5];
    
    // count returns an unsigned integer
    for (NSUInteger i = 0; i < [self.blackjackGame.hand count]; i++) {
        UILabel *label = cardLabel[i];
        FISPlayingCard *card = self.blackjackGame.hand[i];
        card.suit = label.text;
        label.hidden = NO;
    }

    
    if ([self.blackjackGame.handScore integerValue] > 21) {
        self.blackjackGame.isBusted = YES;
        self.resultLabel.text = @"Busted";
    }  else if ([self.blackjackGame.handScore integerValue] == 21) {
        self.resultLabel.text = @"Blackjack";
    }
    
}




@end
