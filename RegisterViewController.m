//
//  RegisterViewController.m
//  photocopier
//
//  Created by Zhansaya on 03.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "RegisterViewController.h"
#import <Parse/Parse.h>
@interface RegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *loginRegField;
@property (weak, nonatomic) IBOutlet UITextField *nameRegField;
@property (weak, nonatomic) IBOutlet UITextField *mailRegField;
@property (weak, nonatomic) IBOutlet UITextField *passwordRegField;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
- (IBAction)registerTapped:(id)sender {
    PFUser *user = [PFUser user];
    user[@"name"] = self.nameRegField.text;
    user.username = self.loginRegField.text;
    user.email = self.mailRegField.text;
    user.password = self.passwordRegField.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            NSLog(@"%s","Registered successfully");
            [self performSegueWithIdentifier:@"successfulRegister" sender:self];
        } else {
            NSLog(@"%@",[error userInfo][@"error"]);
        }
    }];


}

@end
