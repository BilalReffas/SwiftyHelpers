<img src="logo.png" height="100px">

# QRImageGenerator

### Description

`QRImageGenerator` allows you to simply generate an QRCode-Image from a given `String`.

### Usage

The only method in this tiny snippet is called `generateQRCodeImage` and takes one argument `withSize` of type `CGSize`. This argument has a default value of `CGSize(width: 300, height: 300)`.

To create a QRCode-Image, simply call the method on the String you want to generate from:

``` swift
let id = "123456789"
if let qrImage = id.generateQRCodeImage() {
    // Do something with the image
}
```

### Specify the size

To specify the size of the image we simply pass in a CGSize to the `withSize`-Parameter:

``` swift
let id = "123456789"
if let qrImage = id.generateQRCodeImage(CGSize(width: 500.0, height: 500.0)) {
    // Do something with the image
}
```

### Specify the colors

If you want to specify both the foregroundColor and backgroundColor you can call this method and pass in both colors into the `colors` tuple. You don't have to specify the size, because the default size is set to `300 * 300`.

``` swift
let id = "131215315361"
if let barCodeImage = id.generateQRCodeImage(CGSize(width: 1000.0, height: 1000.0), colors: (backgroundColor: UIColor.whiteColor(), foregroundColor: UIColor.orangeColor())) {
    barCodeImage
}
```

Special thanks to [Ben](https://twitter.com/BenchR) for helping me out with this snippet! 😉
