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

- (void)nextEyes;
- (void)prevEyes;

@end

NS_ASSUME_NONNULL_END
