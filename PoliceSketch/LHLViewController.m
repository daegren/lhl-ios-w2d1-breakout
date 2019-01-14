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
  [self.sketch nextEyes];
  [self updateImageViews];
}

- (IBAction)eyesPrev:(id)sender {
  [self.sketch prevEyes];
  [self updateImageViews];
}


#pragma mark - Private Helpers

- (void) updateImageViews {
  self.eyesImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"eyes_%i", self.sketch.eyes + 1]];
}

@end
