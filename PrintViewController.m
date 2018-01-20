//
//  PrintViewController.m
//  photocopier
//
//  Created by Zhansaya on 04.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "PrintViewController.h"
#import "InfoTableViewCell.h"
@interface PrintViewController ()



@end

@implementation PrintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
- (IBAction)educ:(id)sender {
    [self performSegueWithIdentifier:@"1" sender:self];

}
- (IBAction)prman:(id)sender {
    [self performSegueWithIdentifier:@"2" sender:self];

}
- (IBAction)index:(id)sender {
    [self performSegueWithIdentifier:@"3" sender:self];

}
- (IBAction)css:(id)sender {
    [self performSegueWithIdentifier:@"4" sender:self];

}
- (IBAction)report:(id)sender {
    [self performSegueWithIdentifier:@"5" sender:self];

}
- (IBAction)tapped:(id)sender {
    [self performSegueWithIdentifier:@"6" sender:self];

}
- (IBAction)sum:(id)sender {
    [self performSegueWithIdentifier:@"7" sender:self];

}
- (IBAction)eng:(id)sender {
    [self performSegueWithIdentifier:@"8" sender:self];

}
- (IBAction)index1:(id)sender {
    [self performSegueWithIdentifier:@"9" sender:self];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
