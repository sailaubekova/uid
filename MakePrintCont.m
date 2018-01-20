//
//  MakePrintCont.m
//  photocopier
//
//  Created by Zhansaya on 04.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "MakePrintCont.h"
@interface MakePrintCont ()
@property (weak, nonatomic) IBOutlet UITextField *onefield;
@property (weak, nonatomic) IBOutlet UITextField *twofield;
@property (weak, nonatomic) IBOutlet UITextField *threefield;

@end
@implementation MakePrintCont
- (IBAction)one:(id)sender {
    self.onefield.text = @"one side";
}
- (IBAction)both:(id)sender {
    self.onefield.text = @"two sides";
}
- (IBAction)hor:(id)sender {
    self.twofield.text = @"horizontal";
}
- (IBAction)ver:(id)sender {
    self.twofield.text = @"vertical";
}
- (IBAction)black:(id)sender {
    self.threefield.text = @"black";
}
- (IBAction)color:(id)sender {
    self.threefield.text = @"colorful";
}
- (IBAction)print:(id)sender {
    [self.kr1 startAnimating];
    [self.kr1 setBackgroundColor:[UIColor grayColor]];
    [self performSelector:@selector(mymethod1) withObject:nil afterDelay:3.0];
    
}
- (void) mymethod1 {
    [self.kr1 stopAnimating];
    self.kr1.hidden = YES;
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
