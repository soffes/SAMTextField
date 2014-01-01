//
//  SAMTextField.h
//  SAMTextField
//
//  Created by Sam Soffes on 3/11/10.
//  Copyright 2010-2014 Sam Soffes. All rights reserved.
//

/**
 Simple UITextField subclass to adds text insets.
 */
@interface SAMTextField : UITextField

///------------------------------
/// @name Drawing and Positioning
///------------------------------

/**
 The inset or outset margins for the edges of the text content drawing rectangle.

 Use this property to resize and reposition the effective drawing rectangle for the text content. You can specify a
 different value for each of the four insets (top, left, bottom, right). A positive value shrinks, or insets, that
 edge—moving it closer to the center of the button. A negative value expands, or outsets, that edge. Use the
 `UIEdgeInsetsMake` function to construct a value for this property.

 The default value is `UIEdgeInsetsZero`.
 */
@property (nonatomic) UIEdgeInsets textEdgeInsets;

/**
 The inset or outset margins for the edges of the clear button drawing rectangle.

 Use this property to resize and reposition the effective drawing rectangle for the clear button content. You can
 specify a different value for each of the four insets (top, left, bottom, right), but only the top and right insets are
 respected. A positive value will move the clear button farther away from the top right corner. Use the
 `UIEdgeInsetsMake` function to construct a value for this property.

 The default value is `UIEdgeInsetsZero`.
 */
@property (nonatomic) UIEdgeInsets clearButtonEdgeInsets;

/**
 The inset or outset margins for the edges of the view assigned to `rightView`.

 Use this property to resize and reposition the effective drawing rectangle for the right view content. You can
 specify a different value for each of the four insets (top, left, bottom, right), but only the top and right insets are
 respected. A positive value will move the view farther away from the top right corner. Use the
 `UIEdgeInsetsMake` function to construct a value for this property.

 The default value is `UIEdgeInsetsZero`.
 */
@property (nonatomic) UIEdgeInsets rightViewInsets;

/**
 The inset or outset margins for the edges of the view assigned to `leftView`.

 Use this property to resize and reposition the effective drawing rectangle for the left view content. You can
 specify a different value for each of the four insets (top, left, bottom, right), but only the top and right insets are
 respected. A positive value will move the view farther away from the top right corner. Use the
 `UIEdgeInsetsMake` function to construct a value for this property.

 The default value is `UIEdgeInsetsZero`.
 */
@property (nonatomic) UIEdgeInsets leftViewInsets;

@end
