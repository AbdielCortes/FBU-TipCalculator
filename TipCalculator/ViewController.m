//
//  ViewController.m
//  TipCalculator
//
//  Created by zurken on 6/24/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;

@property (weak, nonatomic) IBOutlet UILabel *tipLabel;

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// closes keyboard when we tap the screen
- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    NSLog(@"Closed keyboard");
}

// manages input box
- (IBAction)onEdit:(id)sender {
    NSArray *percentages = @[@(0.15), @(0.20), @(0.22)];
    
    double bill = [self.billField.text doubleValue];
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    double tip = tipPercentage * bill;
    double total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
