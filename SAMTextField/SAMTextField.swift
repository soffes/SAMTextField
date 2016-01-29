//
//  SAMTextField.swift
//  SAMTextField
//
//  Created by Sam Soffes on 3/11/10.
//  Copyright 2010-2014 Sam Soffes. All rights reserved.
//

import UIKit

/**
Simple UITextField subclass to adds text insets.
*/
public class SAMTextField : UITextField {

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
    public var textEdgeInsets = UIEdgeInsetsZero

    /**
     The inset or outset margins for the edges of the clear button drawing rectangle.
     
     Use this property to resize and reposition the effective drawing rectangle for the clear button content. You can
     specify a different value for each of the four insets (top, left, bottom, right), but only the top and right insets are
     respected. A positive value will move the clear button farther away from the top right corner. Use the
     `UIEdgeInsetsMake` function to construct a value for this property.
     
     The default value is `UIEdgeInsetsZero`.
     */
    public var clearButtonEdgeInsets = UIEdgeInsetsZero

    /**
     The inset or outset margins for the edges of the view assigned to `rightView`.
     
     Use this property to resize and reposition the effective drawing rectangle for the right view content. You can
     specify a different value for each of the four insets (top, left, bottom, right), but only the top and right insets are
     respected. A positive value will move the view farther away from the top right corner. Use the
     `UIEdgeInsetsMake` function to construct a value for this property.
     
     The default value is `UIEdgeInsetsZero`.
     */
    public var rightViewInsets = UIEdgeInsetsZero

    /**
     The inset or outset margins for the edges of the view assigned to `leftView`.
     
     Use this property to resize and reposition the effective drawing rectangle for the left view content. You can
     specify a different value for each of the four insets (top, left, bottom, right), but only the top and right insets are
     respected. A positive value will move the view farther away from the top right corner. Use the
     `UIEdgeInsetsMake` function to construct a value for this property.
     
     The default value is `UIEdgeInsetsZero`.
     */
    public var leftViewInsets = UIEdgeInsetsZero
    
    
    // MARK: - UITextField
    
    public override func textRectForBounds(bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(super.textRectForBounds(bounds), textEdgeInsets)
    }
    
    public override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
    }
    
    public override func placeholderRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
    }
    
    public override func clearButtonRectForBounds(bounds: CGRect) -> CGRect {
        var rect = super.clearButtonRectForBounds(bounds)
        rect.origin.x += clearButtonEdgeInsets.right
        rect.origin.y += clearButtonEdgeInsets.top
        return rect
    }
    
    public override func rightViewRectForBounds(bounds: CGRect) -> CGRect {
        var rect = super.rightViewRectForBounds(bounds)
        rect.origin.x += rightViewInsets.right
        rect.origin.y += rightViewInsets.top
        return rect
    }
    
    public override func leftViewRectForBounds(bounds: CGRect) -> CGRect {
        var rect = super.leftViewRectForBounds(bounds)
        rect.origin.x += leftViewInsets.left
        rect.origin.y += leftViewInsets.top
        return rect
    }
}
