//
//  ViewController.h
//  BMI Calculalor
//
//  Created by BH_Lin on 09/07/2017.
//  Copyright © 2017 BH_Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputHeight;
@property (weak, nonatomic) IBOutlet UITextField *inputWeight;
@property (weak, nonatomic) IBOutlet UILabel *outputBMI;

@end

