//
//  AdressAnnotation.m
//  ViewControllersFlow
//
//  Created by Developer on 1/27/16.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "VCEAdressAnnotation.h"

@implementation VCEAdressAnnotation

-(id) initWithTitle:(NSString *) title AndCoordinate:(CLLocationCoordinate2D)coordinate {
    
    self = [super init];
    
    _title = title;
    
    _coordinate = coordinate;
    
    return self;
}

@end