//
//  SAMTextField.m
//  SAMTextField
//
//  Created by Sam Soffes on 3/11/10.
//  Copyright 2010-2013 Sam Soffes. All rights reserved.
//

#import "SAMTextField.h"

@implementation SAMTextField

#pragma mark - Accessors

- (void)setPlaceholderTextColor:(UIColor *)placeholderTextColor {
	_placeholderTextColor = placeholderTextColor;
	
	if (!self.text && self.placeholder) {
		[self setNeedsDisplay];
	}
}

#pragma mark - UIView

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self initialize];
    }
    return self;
}


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self initialize];
    }
    return self;
}

#pragma mark - UITextField

- (CGRect)textRectForBounds:(CGRect)bounds {
  return UIEdgeInsetsInsetRect([super textRectForBounds:bounds], self.textEdgeInsets);
}


- (CGRect)editingRectForBounds:(CGRect)bounds {
  return [self textRectForBounds:bounds];
}


- (CGRect)clearButtonRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect([super clearButtonRectForBounds:bounds], self.clearButtonEdgeInsets);
}


- (CGRect)rightViewRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect([super rightViewRectForBounds:bounds], self.rightViewInsets);
}


- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect([super leftViewRectForBounds:bounds], self.leftViewInsets);
}

- (void)drawPlaceholderInRect:(CGRect)rect {
	if (!_placeholderTextColor) {
		[super drawPlaceholderInRect:rect];
		return;
	}
	
    [_placeholderTextColor setFill];
    
    //check iOS version is >= 7.0
    if (([[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] != NSOrderedAscending)) {
        rect =  CGRectInset(rect, 0, (rect.size.height - self.font.lineHeight) / 2.0);
        [self.placeholder drawInRect:rect withAttributes:@{NSFontAttributeName:self.font, NSForegroundColorAttributeName:_placeholderTextColor}];
    }
    else {
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Wenum-conversion"
    #if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_6_0
        [self.placeholder drawInRect:rect withFont:self.font lineBreakMode:NSLineBreakByTruncatingTail alignment:self.textAlignment];
    #else
        [self.placeholder drawInRect:rect withFont:self.font lineBreakMode:UILineBreakModeTailTruncation alignment:self.textAlignment];
    #endif
    #pragma clang diagnostic pop
    }
}

#pragma mark - Private

- (void)initialize {
    self.textEdgeInsets = UIEdgeInsetsZero;
    self.clearButtonEdgeInsets = UIEdgeInsetsZero;
    self.leftViewInsets = UIEdgeInsetsZero;
    self.rightViewInsets = UIEdgeInsetsZero;
}

@end