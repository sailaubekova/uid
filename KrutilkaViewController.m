//
//  KrutilkaViewController.m
//  photocopier
//
//  Created by Zhansaya on 04.12.15.
//  Copyright © 2015 Zhansaya. All rights reserved.
//

#import "KrutilkaViewController.h"

@interface KrutilkaViewController ()

@end

@implementation KrutilkaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self performSelector:@selector(mymethod) withObject:nil afterDelay:2.0];
    
}

- (void) mymethod {
    
    [self.krutilka stopAnimating];
    //[self.krutilka setBackgroundColor:[UIColor colorWithWhite:0 alpha:0.5]];
    self.krutilka.hidden = YES;
    [self performSegueWithIdentifier:@"krutilka2" sender:self];
}
@end
