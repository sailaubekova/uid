//
//  ScanViewControlle.m
//  photocopier
//
//  Created by Zhansaya on 04.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "ScanViewControlle.h"

@interface ScanViewControlle ()

@property (weak, nonatomic) IBOutlet UIButton *wordButton;
@property (weak, nonatomic) IBOutlet UIButton *pdfButton;
@property (weak, nonatomic) IBOutlet UIButton *txtButton;
@end

@implementation ScanViewControlle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
- (IBAction)scanPictureTapped:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@""
                                                       message:@"This picture is saved on memory"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    [theAlert show];

    UIAlertView *theAlert1 = [[UIAlertView alloc] initWithTitle:@""
                                                       message:@"This picture is scanned successfully"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    [theAlert1 show];

}
- (IBAction)scanDocTapped:(id)sender {
    [self.wordButton setBackgroundColor:[UIColor brownColor]];
    [self.pdfButton setBackgroundColor:[UIColor brownColor]];
    [self.txtButton setBackgroundColor:[UIColor brownColor]];
    
    [self.wordButton setTitle:@"WORD" forState:UIControlStateNormal];
    [self.pdfButton setTitle:@"PDF" forState:UIControlStateNormal];
    [self.txtButton setTitle:@"TXT" forState:UIControlStateNormal];
}
- (IBAction)scanWordTapped:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@""
                                                       message:@"This word document is saved on memory"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    [theAlert show];
    
    UIAlertView *theAlert1 = [[UIAlertView alloc] initWithTitle:@""
                                                        message:@"This document is scanned successfully"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [theAlert1 show];

}
- (IBAction)scanPdfTapped:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@""
                                                       message:@"This pdf document is saved on memory"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    [theAlert show];
    
    UIAlertView *theAlert1 = [[UIAlertView alloc] initWithTitle:@""
                                                        message:@"This document is scanned successfully"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [theAlert1 show];

}
- (IBAction)scanTxtTapped:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@""
                                                       message:@"This txt document is saved on memory"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    [theAlert show];
    
    UIAlertView *theAlert1 = [[UIAlertView alloc] initWithTitle:@""
                                                        message:@"This document is scanned successfully"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [theAlert1 show];

}

@end
