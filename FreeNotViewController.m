//
//  FreeNotViewController.m
//  photocopier
//
//  Created by Zhansaya on 03.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "FreeNotViewController.h"

@interface FreeNotViewController ()
@property (weak, nonatomic) IBOutlet UILabel *listLabel;

@end

@implementation FreeNotViewController

- (IBAction)quit:(id)sender {
    [self performSegueWithIdentifier:@"33" sender:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
   
    
}
- (IBAction)freeTapped:(id)sender {
    [self performSegueWithIdentifier:@"types1" sender:self];
}

- (IBAction)FreeNotTapped:(id)sender {
   [self performSegueWithIdentifier:@"types" sender:self];

}

@end
