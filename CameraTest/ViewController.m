//
//  ViewController.m
//  CameraTest
//
//  Created by Yifang Zhang on 8/28/16.
//  Copyright © 2016 Yifang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // init session
    self.currentSession = [[AVCaptureSession alloc] init];
    [self.currentSession setSessionPreset:AVCaptureSessionPresetHigh];
    
    // init input device
    AVCaptureDevice *inputDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    // check the device avaliability
    NSError * error = nil;
    AVCaptureDeviceInput *deviceInput = [AVCaptureDeviceInput deviceInputWithDevice:inputDevice error:&error];
    if ( [self.currentSession canAddInput:deviceInput] )
        [self.currentSession addInput:deviceInput];
    
    AVCaptureVideoPreviewLayer *previewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.currentSession];
    [previewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    
    CALayer *rootLayer = [[self view] layer];
    [rootLayer setMasksToBounds:YES];
    [previewLayer setFrame:CGRectMake(0, 0, rootLayer.bounds.size.height, rootLayer.bounds.size.height)];
    [rootLayer insertSublayer:previewLayer atIndex:0];

    [self.currentSession startRunning];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePhoto:(id)sender {
    
    
}
- (IBAction)startSession:(id)sender {
    [self.currentSession startRunning];
}

- (IBAction)endSession:(id)sender {
    [self.currentSession stopRunning];
}
@end
