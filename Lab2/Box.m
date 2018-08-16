//
//  Box.m
//  Lab2
//
//  Created by paula on 2018-08-14.
//  Copyright © 2018 paula. All rights reserved.
//

#import "Box.h"

@implementation Box

- (id)initBoxWithHeight:(float)aHeight
                  width:(float)aWidth
                 length:(float)aLength{
    self = [super init];
    if(self){
        self.height = aHeight;
        self.width = aWidth;
        self.length = aLength;
    }
    return self;
}

- (float)calculateVolume{
    float volume = 0.0;
    volume = self.height*self.width*self.length;
    return volume;
}

- (int)calculateHowManyBoxFitInsideAnother:(Box *)box2{
    float volumeBox2 = box2.calculateVolume;
    float volumeBox1 = self.calculateVolume;
    
    if(volumeBox1 > volumeBox2){
        return (int)(volumeBox1/volumeBox2);
    }else{
        return (int)(volumeBox2/volumeBox1);
    }
}

@end
