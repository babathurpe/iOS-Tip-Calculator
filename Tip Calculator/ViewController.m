//
//  ViewController.m
//  Tip Calculator
//
//  Created by Babathurpe on 2015-02-05.
//  Copyright (c) 2015 Babathurpe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tipChanged:(UISlider *)sender {
    int tip = (int) self.tipSlider.value;
    self.tipSliderAmount.text = [NSString stringWithFormat:@"%i", tip];
    float nill = 0.0;
    
    float amount = [self.receiptAmount.text floatValue];
    float personsNumber = [self.partyNumber.text floatValue];
    
    //15% tip amount
    float percent15 = amount * 0.15;
    self.tip15Amount.text = [NSString stringWithFormat:@"%f", percent15];
    
    //custom tip amount
    float customPercent = amount * (tip/100.0);
    self.customTipAmount.text = [NSString stringWithFormat:@"%f", customPercent];
    
    //total 15%
    self.totalAmount.text = [NSString stringWithFormat:@"%f", percent15+amount];
    
    //total custom
    self.totalCustom.text = [NSString stringWithFormat:@"%f", customPercent+amount];
    
    //each pays 15%
    float eachParty15 = (percent15+amount)/personsNumber;
    if (isnan(eachParty15)) {
        self.eachPaysAmount.text = [NSString stringWithFormat:@"%f", nill];
    } else {
        self.eachPaysAmount.text = [NSString stringWithFormat:@"%f", eachParty15];
    }
    
    //Each pays custom
    float eachPartyCustom = (customPercent+amount)/personsNumber;
    if (isnan(eachPartyCustom)) {
       self.partyCustom.text = [NSString stringWithFormat:@"%f", nill];
    } else {
        self.partyCustom.text = [NSString stringWithFormat:@"%f", eachPartyCustom];
    }
}
@end

