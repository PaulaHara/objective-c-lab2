//
//  main.m
//  Lab2
//
//  Created by paula on 2018-08-14.
//  Copyright © 2018 paula. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float volume, volumeVerified, height, width, length, height2, width2, length2, volume2;
        int howManyBoxes;
        
        printf("Give the dimensions of Box1: (height, widht and length)\n");
        scanf("%f%f%f", &height, &width, &length);
        
        volumeVerified = height * width * length;
        
        Box *box = [[Box alloc] initBoxWithHeight:height width:width length:length];
        volume = box.calculateVolume;
        
        NSLog(@"\nBox1 with height:%f width:%f length:%f\nVolume: %f\nVolume calculated: %f\n\n", height, width, length, volumeVerified, volume);
        
        printf("\nGive the dimensions of Box2: (height, widht and length)\n");
        scanf("%f%f%f", &height2, &width2, &length2);
        
        Box *box2 = [[Box alloc] initBoxWithHeight:height2 width:width2 length:length2];
        volume2 = box2.calculateVolume;
        
        howManyBoxes = [box calculateHowManyBoxFitInsideAnother:box2];
        NSLog(@"\nBox2 with height:%f width:%f length:%f\nVolume: %f\n", height2, width2, length2, volume2);
        
        if(volume > volume2){
            NSLog(@"Box2 can fit %d times inside Box1", howManyBoxes);
        }else{
            NSLog(@"Box1 can fit %d times inside Box2", howManyBoxes);
        }
    }
    return 0;
}
