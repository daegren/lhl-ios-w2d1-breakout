//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"
#import "Sketch.h"

@interface LHLViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;

@property(strong, nonatomic) Sketch *sketch;

@property(strong, nonatomic) NSArray *eyesImages;
@property(strong, nonatomic) NSArray *noseImages;
@property(strong, nonatomic) NSArray *mouthImages;

@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

  self.sketch = [[Sketch alloc] init];
  self.eyesImages = @[[UIImage imageNamed:@"eyes_1"],[UIImage imageNamed:@"eyes_2"],[UIImage imageNamed:@"eyes_3"],[UIImage imageNamed:@"eyes_4"],[UIImage imageNamed:@"eyes_5"]];
  self.noseImages = @[[UIImage imageNamed:@"nose_1"],[UIImage imageNamed:@"nose_2"],[UIImage imageNamed:@"nose_3"],[UIImage imageNamed:@"nose_4"],[UIImage imageNamed:@"nose_5"]];
  self.mouthImages = @[[UIImage imageNamed:@"mouth_1"],[UIImage imageNamed:@"mouth_2"],[UIImage imageNamed:@"mouth_3"],[UIImage imageNamed:@"mouth_4"],[UIImage imageNamed:@"mouth_5"]];
}

#pragma mark - Actions

- (IBAction)eyesNext:(id)sender {
  [self.sketch next:Eyes];
  [self updateImageViews];
}

- (IBAction)eyesPrev:(id)sender {
  [self.sketch prev:Eyes];
  [self updateImageViews];
}

- (IBAction)noseNext:(id)sender {
  [self.sketch next:Nose];
  [self updateImageViews];
}

- (IBAction)nosePrev:(id)sender {
  [self.sketch prev:Nose];
  [self updateImageViews];
}

- (IBAction)mouthNext:(id)sender {
  [self.sketch next:Mouth];
  [self updateImageViews];
}

- (IBAction)mouthPrev:(id)sender {
  [self.sketch prev:Mouth];
  [self updateImageViews];
}


#pragma mark - Private Helpers

- (void) updateImageViews {
  self.eyesImageView.image = self.eyesImages[self.sketch.eyes];
  self.noseImageView.image =  self.noseImages[self.sketch.nose];
  self.mouthImageView.image = self.mouthImages[self.sketch.mouth];
}

@end
