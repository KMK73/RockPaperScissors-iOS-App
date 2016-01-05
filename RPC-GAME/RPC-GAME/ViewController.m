//
//  ViewController.m
//  RPC-GAME
//
//  Created by Kelsey Kjeldsen on 1/5/16.
//  Copyright (c) 2016 Kelsey Kjeldsen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _rcpImage.image = [UIImage imageNamed:@"rcp.jpg"];
    _compImage.image = [UIImage imageNamed:@"rcp.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//function to get random choice from computer
int getRandomInteger(int minimum, int maximum) {
    return arc4random_uniform((maximum - minimum) + 1) + minimum;
}

//create computer random choice
-(void) computerChoice {
    
    //random number for computer choice with random function
    compRandomNumber = getRandomInteger(0, 2);
    
    switch (compRandomNumber) {
        case 0:
            //switch comp image
            _compImage.image = [UIImage imageNamed: @"rock.jpg"];
            NSLog(@"Computer chose ROCK!");
            break;
        case 1:
            _compImage.image = [UIImage imageNamed: @"paper.jpg"];
            NSLog(@"Computer chose PAPER!");
            break;
        case 2:
            _compImage.image = [UIImage imageNamed: @"scissors.jpg"];
            NSLog(@"Computer chose SCISSORS!");
            break;
        default:
            break;
    }

}

-(void) determineWinner {

    /*
     winner = 0 is a tie 
     winner = 1 is computer wins
     winner = 2 is user wins
     
     compRandomNumber = 0 is rock
     compRandomNumber = 1 is paper
     compRandomNumber = 2 is scissors
     */

    if (userChoiceIntButtonPressed == 0) {
        if (compRandomNumber==0) { winner =0; } //user rock, comp rock = TIE
        if (compRandomNumber==1) { winner =1; } //user rock, comp paper = comp wins
        if (compRandomNumber==2) { winner =2; } //user rock, comp scissors user wins
    }
    if (userChoiceIntButtonPressed == 1) { //user pressed paper
        if (compRandomNumber==1) { winner =0; } //tie
        if (compRandomNumber==2) { winner =1; } //comp wins with scissors
        if (compRandomNumber==0) { winner =2; } //user wins with scissors
    }
    if (userChoiceIntButtonPressed == 2) { //user pressed scissors
        if (compRandomNumber==2) { winner =0; } //tie
        if (compRandomNumber==0) { winner =1; } //comp wins
        if (compRandomNumber==1) { winner =2; } //user wins
    }
    //once winner is selected
    if (winner == 0) {
        _winnerLabel.text = @"It's a Tie!";
    }
    if (winner ==1) {
        _winnerLabel.text= @"The Computer Wins!";
    }
    if (winner == 2) {
        _winnerLabel.text = @"You Won!"; 
    }

}

//rock, paper, scissors buttons pressed
- (IBAction)rockButtonPressed:(id)sender {
    userChoiceIntButtonPressed = 0; //0 for rock
    _rcpImage.image = [UIImage imageNamed:@"rock.jpg"];
    [self computerChoice]; //calling computer choice
    [self determineWinner];
}

- (IBAction)paperButtonPressed:(id)sender {
    userChoiceIntButtonPressed = 1; //1 for paper
    _rcpImage.image = [UIImage imageNamed:@"paper.jpg"];
    [self computerChoice]; //calling computer choice
    [self determineWinner];
}

- (IBAction)scissorsButtonPressed:(id)sender {
    userChoiceIntButtonPressed = 2; //2 for scissors
    _rcpImage.image = [UIImage imageNamed:@"scissors.jpg"];
    [self computerChoice]; //calling computer choice
    [self determineWinner];
}



@end
