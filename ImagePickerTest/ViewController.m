//
//  ViewController.m
//  ImagePickerTest
//
//  Created by Gregory Ritter on 2016-11-09.
//  Copyright © 2016 Lolay, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIImagePickerController* picker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) cameraPressed:(id) sender {
    self.picker = [[UIImagePickerController alloc] init];
    self.picker.sourceType =  UIImagePickerControllerSourceTypeCamera;
    self.picker.delegate = self;
    self.picker.allowsEditing = NO;
    [self presentViewController:self.picker animated:YES completion:nil];
}

@end
