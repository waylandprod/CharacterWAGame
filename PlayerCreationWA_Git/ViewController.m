//
//  ViewController.m
//  PlayerCreationWA_Git
//
//  Created by Kc on 2/26/14.
//  Copyright (c) 2014 Wayland Productions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)tappedGenerate:(id)sender{
    NSString* chanceOfClassFilePath = [[NSBundle mainBundle] pathForResource:@"characterClass" ofType:@"plist"];
    NSDictionary* characterChance = [NSDictionary dictionaryWithContentsOfFile:chanceOfClassFilePath];
    NSInteger randomNumber = arc4random() % (99+1);
    label.text = [NSString stringWithFormat: @"%i", randomNumber];
    // Git update test
    
    if ([[characterChance valueForKeyPath:@"OfficeWorker.ClassPosibilityRangeStop"] intValue] <=randomNumber) {
        testField.text = @"Office Worker Probable";
    }
    else{
        testField.text = @"Retail Worker Probable";
    }
    //
    NSString* classFilePath = [[NSBundle mainBundle] pathForResource:@"characterClass" ofType:@"plist"];
    NSDictionary* characterStats = [NSDictionary dictionaryWithContentsOfFile:classFilePath];
    NSString * retailSalesPerson_Name = characterStats[@"RetailSalesPerson"][@"Name"];
    NSLog(@"%@", retailSalesPerson_Name);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
