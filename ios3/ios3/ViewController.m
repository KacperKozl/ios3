//
//  ViewController.m
//  ios3
//
//  Created by student on 18/01/2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self becomeFirstResponder    ];
}
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if(motion==UIEventSubtypeMotionShake){
        [self showShakeDetectedAlert];
    }
}
-(BOOL)canBecomeFirstResponder{
    return YES;
}
-(IBAction)showShakeDetectedAlert{
    UIAlertController *alertController=[UIAlertController alertControllerWithTitle:@"Shake gesture detected"message:@"Do you want to change background color?"  preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        [self.view setBackgroundColor:[UIColor blueColor]];
    }];
    UIAlertAction *noButton=[UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Shake was detected");
        
    }];
    [alertController addAction:yesButton];
    [alertController addAction:noButton];
    [self presentViewController:alertController animated:YES completion:nil];
}
-(IBAction)tapGesture:(UITapGestureRecognizer*)sender{
    _gestureLabel.text=@"Tap detected";
}
-(IBAction)pinchGesture:(UIPinchGestureRecognizer*)sender{
    _gestureLabel.text=@"Pinch detected";
}
-(IBAction)swipeGesture:(UISwipeGestureRecognizer*)sender{
    _gestureLabel.text=@"Swipe detected";
}
-(IBAction)longPressGesture:(UILongPressGestureRecognizer*)sender{
    _gestureLabel.text=@"Long press detected";
}
@end
