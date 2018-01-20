//
//  ViewController.m
//  photocopier
//
//  Created by Zhansaya on 01.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *wrongLoginLabel;

@property (weak, nonatomic) IBOutlet UITextField *usernameLoginField;
@property (weak, nonatomic) IBOutlet UITextField *passwordLoginField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)enterTapped:(id)sender {
    [PFUser logInWithUsernameInBackground:self.usernameLoginField.text password:self.passwordLoginField.text
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            NSLog(@"%s", "login successfully");
                                            
                                            [self performSegueWithIdentifier:@"krutilka1" sender:self];
                                            // Do stuff after successful login.
                                       } else {
                                            self.wrongLoginLabel.text = @"Incorrect username or password";
                                            [self.wrongLoginLabel setTextColor:[UIColor redColor]];
                                            NSLog(@"%s", "you are not entered");
                                            // The login failed. Check error to see why.
                                        }
                                    }];

    
}
- (IBAction)registerTapped:(id)sender {
    [self performSegueWithIdentifier:@"registerTapped" sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end