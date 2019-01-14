//
//  Sketch.m
//  PoliceSketch
//
//  Created by David Mills on 2019-01-14.
//  Copyright © 2019 Sam Meech-Ward. All rights reserved.
//

#import "Sketch.h"

@interface Sketch ()

@property (assign, nonatomic) int numberOfVariations;

@end

@implementation Sketch

- (instancetype)initWithVariations:(int)numberOfVariations {
  if (self = [super init]) {
    _eyes = 0;
    _nose = 0;
    _mouth = 0;
    _numberOfVariations = numberOfVariations;
  }

  return self;
}

- (void)next:(SketchSection) section {
  switch (section) {
    case Eyes:
      _eyes = [self nextValue:_eyes];
      break;
    case Nose:
      _nose = [self nextValue:_nose];
      break;

    case Mouth:
      _mouth = [self nextValue:_mouth];
      break;

    default:
      break;
  }
}

- (void)prev:(SketchSection) section {
  switch (section) {
    case Eyes:
      _eyes = [self prevValue:_eyes];
      break;
    case Nose:
      _nose = [self prevValue:_nose];
      break;

    case Mouth:
      _mouth = [self prevValue:_mouth];
      break;

    default:
      break;
  }
}

- (UIImage *)imageForSection:(SketchSection) section {
  NSString *sectionName;
  int value;

  switch (section) {
    case Eyes:
      sectionName = @"eyes";
      value = _eyes;
      break;

    case Nose:
      sectionName = @"nose";
      value = _nose;
      break;

    case Mouth:
      sectionName = @"mouth";
      value = _mouth;
      break;

    default:
      break;
  }

  NSString *imageName = [NSString stringWithFormat:@"%@_%i", sectionName, value + 1];
  return [UIImage imageNamed:imageName];
}

#pragma mark - Private Helpers

- (int)nextValue:(int)value {
//  if (value + 1 > (self.numberOfVariations - 1)) {
//    return 0;
//  }
//
//  return value + 1;
  return (value + 1) % self.numberOfVariations;
}

- (int)prevValue:(int)value {
//  if (value - 1 < 0) {
//    return self.numberOfVariations - 1;
//  }
//
//  return value - 1;
  return (value - 1 < 0) ? self.numberOfVariations - 1 : value - 1;
}

@end
