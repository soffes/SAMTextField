//
//  SAMTextField.m
//  SAMTextField
//
//  Created by Sam Soffes on 3/11/10.
//  Copyright 2010-2013 Sam Soffes. All rights reserved.
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


- (CGRect)clearButtonRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect([super clearButtonRectForBounds:bounds], self.clearButtonEdgeInsets);
}


- (CGRect)rightViewRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect([super rightViewRectForBounds:bounds], self.rightViewInsets);
}


- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect([super leftViewRectForBounds:bounds], self.leftViewInsets);
}


#pragma mark - Private

- (void)initialize {
  self.textEdgeInsets = UIEdgeInsetsZero;
  self.clearButtonEdgeInsets = UIEdgeInsetsZero;
    self.leftViewInsets = UIEdgeInsetsZero;
    self.rightViewInsets = UIEdgeInsetsZero;
}

@end
