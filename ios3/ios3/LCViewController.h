//
//  LCViewController.h
//  ios3
//
//  Created by student on 25/01/2024.
//

#import <UIKit/UIKit.h>
#import<CoreLocation/CoreLocation.h>
NS_ASSUME_NONNULL_BEGIN

@interface LCViewController : UIViewController<CLLocationManagerDelegate>

@property(weak,nonatomic)IBOutlet UILabel *latitudeLabel;
@property(weak,nonatomic)IBOutlet UILabel *longitudeLabel;
@property(weak,nonatomic)IBOutlet UILabel *addressLabel;

@property(weak,nonatomic)IBOutlet UITextView *latitudeText;
@property(weak,nonatomic)IBOutlet UITextView *longitudeText;
@property(weak,nonatomic)IBOutlet UITextView *addressText;
@property(weak,nonatomic)IBOutlet UIButton *currentLocationButton;
-(IBAction) getCurrentLocation:(id)sender;
@end

NS_ASSUME_NONNULL_END
