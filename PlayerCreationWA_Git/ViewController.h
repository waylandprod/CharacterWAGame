//
//  ViewController.h
//  PlayerCreationWA_Git
//
//  Created by Kc on 2/26/14.
//  Copyright (c) 2014 Wayland Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *label;
    IBOutlet UILabel *characterClassLabel;
    IBOutlet UILabel *testField;
    
    NSDictionary *characterClass;
    NSDictionary *RetailSalesPerson;
    NSDictionary *OfficeWorker;
    NSArray *posibility;
    NSArray *name;
    NSArray *happiness;
}
@end
