//
//  CopyViewController.m
//  photocopier
//
//  Created by Zhansaya on 04.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "CopyViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface CopyViewController ()

@property (weak, nonatomic) IBOutlet UITextField *sidesField;
@property (weak, nonatomic) IBOutlet UITextField *orientationField;
@property (weak, nonatomic) IBOutlet UITextField *colorField;
@end

@implementation CopyViewController

- (void)viewDidLoad {
    
    // Do view setup here.
}
- (IBAction)onesideTapped:(id)sender {
    self.sidesField.text = @"one side";
}
- (IBAction)bothsideTapped:(id)sender {
    self.sidesField.text = @"both sides";
}
- (IBAction)horizontalTapped:(id)sender {
    self.orientationField.text = @"horizontal";
}
- (IBAction)verticalTapped:(id)sender {
    self.orientationField.text = @"vertical";
}
- (IBAction)blackTapped:(id)sender {
    self.colorField.text = @"black";
}
- (IBAction)colorfulTapped:(id)sender {
    self.colorField.text = @"colorful";
}
- (IBAction)cpoyAndSaveTapped:(id)sender {
    [self.krutilka1 startAnimating];
    [self.krutilka1 setBackgroundColor:[UIColor grayColor]];
    [self performSelector:@selector(mymethod1) withObject:nil afterDelay:3.0];
    
}
- (void) mymethod1 {
    [self.krutilka1 stopAnimating];
    self.krutilka1.hidden = YES;
    UIAlertView *theAlert1 = [[UIAlertView alloc] initWithTitle:@""
                                                        message:@"This file is saved as 1.doc on memory"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [theAlert1 show];
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@""
                                                       message:@"This file is copied successfully"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    [theAlert show];
    

    }

@end
