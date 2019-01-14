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
@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

  self.sketch = [[Sketch alloc] init];
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
  self.eyesImageView.image = [self.sketch imageForSection:Eyes];
  self.noseImageView.image =  [self.sketch imageForSection:Nose];
  self.mouthImageView.image = [self.sketch imageForSection:Mouth];
}


@end
