import UIKit

// MARK: QRImageGenerator

extension String {
    func generateQRCodeImage(withSize size: CGSize = CGSize(width: 300.0, height: 300.0)) -> UIImage? {
        // Get data from String (self)
        let data = self.dataUsingEncoding(NSISOLatin1StringEncoding)
        // Create CIQRCodeGenerator filter
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            // Set both the inputMessage and the inputCorrectionLevel of the filter
            filter.setValue(data, forKey: "inputMessage")
            filter.setValue("Q", forKey: "inputCorrectionLevel")
            // Check for the filters outputImage
            guard let qrImage = filter.outputImage else {
                return nil
            }
            // Scale the image by applying the size argument devided by the image's extent size
            let scaleX = size.width / qrImage.extent.size.width
            let scaleY = size.height / qrImage.extent.size.height
            let transformedImage = qrImage.imageByApplyingTransform(CGAffineTransformMakeScale(scaleX, scaleY))

            return UIImage(CIImage: transformedImage)
        }

        return nil
    }
}
