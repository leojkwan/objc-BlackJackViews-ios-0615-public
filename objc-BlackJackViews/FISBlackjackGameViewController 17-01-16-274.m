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


- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.blackjackGame = [[FISBlackjackGame alloc] init];
    [self.blackjackGame deal];
    



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hitButton:(UIButton *)sender {
    NSLog(@"Hi");
}


- (IBAction)dealButton:(UIButton *)sender {
}


@end
