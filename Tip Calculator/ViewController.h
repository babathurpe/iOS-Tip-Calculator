//
//  ViewController.h
//  Tip Calculator
//
//  Created by Babathurpe on 2015-02-05.
//  Copyright (c) 2015 Babathurpe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *receiptAmount;
@property (strong, nonatomic) IBOutlet UITextField *partyNumber;
@property (strong, nonatomic) IBOutlet UISlider *tipSlider;
@property (strong, nonatomic) IBOutlet UILabel *tipSliderAmount;
@property (strong, nonatomic) IBOutlet UILabel *tip15Amount;
@property (strong, nonatomic) IBOutlet UILabel *customTipAmount;
@property (strong, nonatomic) IBOutlet UILabel *totalAmount;
@property (strong, nonatomic) IBOutlet UILabel *eachPaysAmount;
@property (strong, nonatomic) IBOutlet UILabel *totalCustom;
@property (strong, nonatomic) IBOutlet UILabel *partyCustom;

- (IBAction)tipChanged:(UISlider *)sender;

@end

