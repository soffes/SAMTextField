# SAMTextField

Handy UITextField additions like insetting text and other elements.

SAMTextField is tested on iOS 6-8 and requires ARC. Released under the [MIT license](LICENSE).

## Usage

``` objc
// Initialize a text field
SAMTextField *textField = [[SAMTextField alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 280.0f, 44.0f)];

// Inset some text
textField.textEdgeInsets = UIEdgeInsetsMake(10.0f, 10.0f, 10.0f, 10.0f);
```

See the [header](SAMTextField/SAMTextField.h) for full documentation.

## Installation

Simply add the files in the `SAMTextField.h` and `SAMTextField.m` to your project or add `SAMTextField` to your Podfile if you're using CocoaPods.
