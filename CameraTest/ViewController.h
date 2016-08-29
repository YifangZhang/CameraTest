//
//  ViewController.h
//  CameraTest
//
//  Created by Yifang Zhang on 8/28/16.
//  Copyright © 2016 Yifang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *startSession;
@property AVCaptureSession * currentSession;

- (IBAction)startSession:(id)sender;
- (IBAction)endSession:(id)sender;

@end

