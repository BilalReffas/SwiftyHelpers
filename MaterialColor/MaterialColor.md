# MaterialColor

## Description

`MaterialColor` is a collection of all colors from [Google's Material Design](https://www.google.com/design/spec/style/color.html)

## Usage

Every color is stored as a method of the `MaterialColor`-Subclass of `UIColor`. You can get a color by calling the specific class method on `MaterialColor`. Each main color has different variations such as `Red500()` or `Red900()`. The most colors have also four **accent colors**. They are represented by methods like `RedAccent100()`.

``` swift
let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
view.backgroundColor = MaterialColor.Teal500()
let secondView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 44))
secondView.backgroundColor = MaterialColor.Teal800()
view.addSubview(secondView)
```

## Color Palettes

You can also create color palettes using the `MaterialColor`'s Struct called `ColorPalette`:

``` swift
let palette = MaterialColor.ColorPalette(
    primaryColor: MaterialColor.Teal500(),
    secondPrimaryColor: MaterialColor.Teal700(),
    thirdPrimaryColor: MaterialColor.Teal800(),
    accentColor: MaterialColor.DeepOrange500()
)
```

Now you can use the `primaryColor` to highlight a button above the dark background:

``` swift
let button = UIButton(frame: CGRect(x: 0, y: 500.0, width: 200.0, height: 50.0))
button.center.x = view.center.x
button.setTitle("Create", forState: .Normal)
button.backgroundColor = palette.accentColor
view.addSubview(button)
```

## Text Color

There are two kinds of text color: `TextColorOnDarkBackgroundWithTextPriority()` and `TextColorOnLightBackgroundWithTextPriority()`. The text priority is simply an `Enum` containing three cases:

1. Primary
2. Secondary
3. Disabled

``` swift
let headingLabel = UILabel(frame: CGRect(x: 0, y: 8.0, width: secondView.frame.width, height: 25.0))
headingLabel.textAlignment = .Center
headingLabel.font = UIFont.systemFontOfSize(18.0)
headingLabel.textColor = MaterialColor.TextColorOnDarkBackgroundWithTextPriority(.Primary)
headingLabel.text = "Heading"
secondView.addSubview(headingLabel)
```
