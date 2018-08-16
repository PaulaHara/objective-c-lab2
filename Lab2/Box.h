//
//  Box.h
//  Lab2
//
//  Created by paula on 2018-08-14.
//  Copyright © 2018 paula. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;

- (id)initBoxWithHeight:(float)aHeight
                  width:(float)aWidth
                 length:(float)aLength;

- (float)calculateVolume;

- (int)calculateHowManyBoxFitInsideAnother:(Box *)box2;

@end
