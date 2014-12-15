//
//  SKViewHelper.m
//  Pods
//
//  Created by Soichiro Kashima on 12/14/2014.
//  Copyright (c) 2014 Soichiro Kashima. All rights reserved.
//

#import "SKViewHelper.h"

@implementation SKViewHelper

+ (CGFloat)heightForText:(NSString *)text forWidth:(CGFloat)width withFont:(UIFont *)font
{
    if (!text) {
        return 0;
    }

    CGSize size;
    if (NSFoundationVersionNumber_iOS_6_1 < floor(NSFoundationVersionNumber)) {
        CGRect frame = [text boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                  options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil];
        size = CGSizeMake(frame.size.width, frame.size.height + 1);
    } else {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
        size = [text sizeWithFont:font constrainedToSize:CGSizeMake(width, CGFLOAT_MAX) lineBreakMode:NSLineBreakByCharWrapping];
#pragma GCC diagnostic pop
    }
    return size.height;
}

@end
