//
//  Sketch.h
//  PoliceSketch
//
//  Created by David Mills on 2019-01-14.
//  Copyright © 2019 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sketch : NSObject

@property(assign, nonatomic, readonly) int eyes;
@property(assign, nonatomic, readonly) int nose;
@property(assign, nonatomic, readonly) int mouth;

- (void)nextEyes;
- (void)prevEyes;

- (void)nextNose;
- (void)prevNose;

- (void)nextMouth;
- (void)prevMouth;

@end

NS_ASSUME_NONNULL_END
