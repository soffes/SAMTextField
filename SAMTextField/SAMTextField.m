//
//  SAMTextField.m
//  SAMTextField
//
//  Created by Sam Soffes on 3/11/10.
//  Copyright 2010-2014 Sam Soffes. All rights reserved.
//

#import "SAMTextField.h"

@implementation SAMTextField

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


- (CGRect)placeholderRectForBounds:(CGRect)bounds {
  return [self textRectForBounds:bounds];
}


- (CGRect)clearButtonRectForBounds:(CGRect)bounds {
	CGRect rect = [super clearButtonRectForBounds:bounds];
	rect.origin.x += self.clearButtonEdgeInsets.right;
	rect.origin.y += self.clearButtonEdgeInsets.top;
	return rect;
}


- (CGRect)rightViewRectForBounds:(CGRect)bounds {
	CGRect rect = [super rightViewRectForBounds:bounds];
	rect.origin.x += self.rightViewInsets.right;
	rect.origin.y += self.rightViewInsets.top;
	return rect;
}


- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    CGRect rect = [super leftViewRectForBounds:bounds];
	rect.origin.x += self.leftViewInsets.left;
	rect.origin.y += self.leftViewInsets.top;
	return rect;
}


#pragma mark - Private

- (void)initialize {
  self.textEdgeInsets = UIEdgeInsetsZero;
  self.clearButtonEdgeInsets = UIEdgeInsetsZero;
    self.leftViewInsets = UIEdgeInsetsZero;
    self.rightViewInsets = UIEdgeInsetsZero;
}

@end
