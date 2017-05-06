//
//  Car.m
//  Vehicles
//
//  Created by Rushan on 2017-05-06.
//  Copyright © 2017 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id)init{
    if(self = [super init]){
        self.numberOfWheels = 4;
    }
    return self;
}

-(NSString *) start{
    return [NSString stringWithFormat:@"Start with power source %@", self.powerSource];
}

-(NSString *) goForward{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}

-(NSString *) goBackward{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}

-(NSString *) stopMoving{
    return [NSString stringWithFormat:@"Depress brake pedal. %@" [self changeGears:@"Park"]];
}

-(NSString *) makeNoise{
    return @"Beep Beep!";
}

@end
