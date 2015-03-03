//
//  NPPDataModel.m
//  NPPHomework4
//
//  Created by Nick Peters on 3/2/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import "NPPDataModel.h"

@implementation NPPDataModel

-(id)initWithName: (NSString *)name andUrl:(NSString *)url{
    
    self.name = name;
    self.url = url;
    
    return self;
}

@end
