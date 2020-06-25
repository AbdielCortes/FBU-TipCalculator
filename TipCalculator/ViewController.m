//
//  ViewController.m
//  TipCalculator
//
//  Created by zurken on 6/24/20.
//  Copyright © 2020 FacebookUniversity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    NSLog(@"Closed keyboard");
}

- (IBAction)onEdit:(id)sender {
    
}

@end
