import UIKit

// MARK: QRImageGenerator

extension String {
    // MARK: Basic QRCodeImage
    func generateQRCodeImage(size: CGSize = CGSize(width: 300.0, height: 300.0)) -> UIImage? {

        // Get data from String (self)
        let data = self.dataUsingEncoding(NSISOLatin1StringEncoding)

        // Create CIQRCodeGenerator filter
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("Q", forKey: "inputCorrectionLevel")

        // Check for the filters outputImage
        guard let qrImage = filter.outputImage else { return nil }

        // Scale the image by applying the size argument devided by the image's extent size
        let scaleX = size.width / qrImage.extent.size.width
        let scaleY = size.height / qrImage.extent.size.height
        let transformedImage = qrImage.imageByApplyingTransform(CGAffineTransformMakeScale(scaleX, scaleY))

        return UIImage(CIImage: transformedImage)
    }
    // MARK: Setting Color
    func generateQRCodeImage(size: CGSize = CGSize(width: 300.0, height: 300.0), colors: (backgroundColor: UIColor, foregroundColor: UIColor)) -> UIImage? {

        // Generate basic QRCode image for coloring
        guard let barCodeImage = generateQRCodeImage(size)?.CIImage else { return nil }

        // Color the image
        guard let colorFilter = CIFilter(name: "CIFalseColor") else { return nil }
        colorFilter.setValue(barCodeImage, forKey: "inputImage")
        colorFilter.setValue(CIColor(color: colors.foregroundColor), forKey: "inputColor0")
        colorFilter.setValue(CIColor(color: colors.backgroundColor), forKey: "inputColor1")

        // Get the output image
        guard let coloredImage = colorFilter.outputImage else { return nil }

        return UIImage(CIImage: coloredImage)
    }
}
