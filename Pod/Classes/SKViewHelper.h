//
//  SKViewHelper.h
//  Pods
//
//  Created by Soichiro Kashima on 12/14/2014.
//  Copyright (c) 2014 Soichiro Kashima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKViewHelper : NSObject

+ (CGFloat)heightForText:(NSString *)text forWidth:(CGFloat)width withFont:(UIFont *)font;

@end
