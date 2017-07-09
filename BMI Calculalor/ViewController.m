//
//  ViewController.m
//  BMI Calculalor
//
//  Created by BH_Lin on 09/07/2017.
//  Copyright © 2017 BH_Lin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize inputWeight;
@synthesize inputHeight;
@synthesize outputBMI;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
}

-(void)dismissKeyboard {
    [inputHeight resignFirstResponder];
    [inputWeight resignFirstResponder];
}

- (void)doBMICalculation {
    
    NSLog(@"doBMICalculation");
    
    NSString *textOfInputHeight = [inputHeight text];
    float valueOfHeight = [textOfInputHeight floatValue]/100;
    NSLog(@"%@", [NSString stringWithFormat:@"Height = %f %@", valueOfHeight, textOfInputHeight]);
    NSString *textOfInputWeight = [inputWeight text];
    int valueOfWeight = [textOfInputWeight intValue];
    
    float baseValue = valueOfHeight*valueOfHeight;
    NSLog(@"%@", [NSString stringWithFormat:@"BMI = %i / %f", valueOfWeight, baseValue]);
    int bmi = valueOfWeight/baseValue;
    NSString* textOfBMI = [NSString stringWithFormat:@"%i", bmi];
    
    outputBMI.text = textOfBMI;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)endingInputHeight:(id)sender {
    
    NSLog(@"endingInputHeight");
    
    [self doBMICalculation];
}

- (IBAction)endingInputWeight:(id)sender {
    NSLog(@"endingInputWeight");
    [self doBMICalculation];
}

@end
