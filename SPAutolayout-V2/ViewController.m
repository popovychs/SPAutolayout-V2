//
//  ViewController.m
//  SPAutolayout-V2
//
//  Created by popovychs on 19.10.15.
//  Copyright © 2015 popovychs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *showLabel;
@property (weak, nonatomic) IBOutlet UIButton *loadButton;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view removeConstraints:self.view.constraints];
    
    // Constraints for showLabel
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_showLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:30.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_showLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.f constant:25.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_showLabel attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.f constant:-25.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_showLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0.0f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_showLabel attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.f constant:-100.f]];
    
    // Constraints for loadButton
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_loadButton attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.f constant:10.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_loadButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.f constant:-10.f]];
    
    // Constraints for clearButton
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_clearButton attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.f constant:-10.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_clearButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.f constant:-10.f]];
}

#pragma mark - button methods

- (IBAction)loadText:(UIButton *)sender {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"txt"];
    NSString *textFromFile = [NSString stringWithContentsOfFile:filePath
                                                       encoding:NSMacOSRomanStringEncoding
                                                          error:nil];
    _showLabel.text = textFromFile;
}

- (IBAction)clearText:(UIButton *)sender {
    _showLabel.text = @"";
}

@end
