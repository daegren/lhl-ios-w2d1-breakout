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

- (void)nextEyes {
  if (_eyes + 1 > 4) {
    _eyes = 0;
  } else {
    _eyes += 1;
  }
}

- (void)prevEyes {
  if (_eyes - 1 < 0) {
    _eyes = 4;
  } else {
    _eyes -= 1;
  }
}

- (void)nextNose {
  if (_nose + 1 > 4) {
    _nose = 0;
  } else {
    _nose += 1;
  }
}

- (void)prevNose {
  if (_nose - 1 < 0) {
    _nose = 4;
  } else {
    _nose -= 1;
  }
}

- (void)nextMouth {
  if (_mouth + 1 > 4) {
    _mouth = 0;
  } else {
    _mouth += 1;
  }
}

- (void)prevMouth {
  if (_mouth - 1 < 0) {
    _mouth = 4;
  } else {
    _mouth -= 1;
  }
}

@end
