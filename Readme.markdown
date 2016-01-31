# SAMTextField

Handy UITextField additions like insetting text and other elements.

SAMTextField is tested on iOS 7-9 and requires ARC. Released under the [MIT license](LICENSE).

## Usage

#### Objective-C
``` objc
// Initialize a text field
SAMTextField *textField = [[SAMTextField alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 280.0f, 44.0f)];

// Inset some text
textField.textEdgeInsets = UIEdgeInsetsMake(10.0f, 10.0f, 10.0f, 10.0f);
```

#### Swift
``` swift
// Initialize a text field
let textField = SAMTextField(frame:CGRectMake(20.0, 20.0, 280.0, 44.0))

// Inset some text
textField.textEdgeInsets = UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0)
```

See the [header](SAMTextField/SAMTextField.swift) for full documentation.

## Installation

Simply add the file `SAMTextField.swift` to your project or add `SAMTextField` to your Podfile if you're using CocoaPods.
