//
//  ViewController.h
//  RPC-GAME
//
//  Created by Kelsey Kjeldsen on 1/5/16.
//  Copyright (c) 2016 Kelsey Kjeldsen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    //int for random computer number choice
    int compRandomNumber;
    //int for what user choice was
    int userChoiceIntButtonPressed;
    //int to determine winner
    int winner; 
}


//button labels
@property (weak, nonatomic) IBOutlet UIButton *rockButton;
@property (weak, nonatomic) IBOutlet UIButton *paperButton;
@property (weak, nonatomic) IBOutlet UIButton *scissorsButton;
//winner label
@property (weak, nonatomic) IBOutlet UILabel *winnerLabel;


//image label rcp picture
@property (weak, nonatomic) IBOutlet UIImageView *rcpImage;
//computer image choice
@property (weak, nonatomic) IBOutlet UIImageView *compImage;


//button actions
- (IBAction)rockButtonPressed:(id)sender;
- (IBAction)paperButtonPressed:(id)sender;
- (IBAction)scissorsButtonPressed:(id)sender;




@end

