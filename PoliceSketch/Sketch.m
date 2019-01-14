//
//  Sketch.m
//  PoliceSketch
//
//  Created by David Mills on 2019-01-14.
//  Copyright © 2019 Sam Meech-Ward. All rights reserved.
//

#import "Sketch.h"

@implementation Sketch

- (instancetype)init {
  if (self = [super init]) {
    _eyes = 0;
    _nose = 0;
    _mouth = 0;
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
  if (value + 1 > 4) {
    return 0;
  }

  return value + 1;
}

- (int)prevValue:(int)value {
  if (value - 1 < 0) {
    return 4;
  }

  return value - 1;
}

@end
