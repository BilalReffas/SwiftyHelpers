import UIKit
import AVFoundation

// MARK: QRCodeCaptureDelegate
protocol QRCodeCaptureDelegate {
    func didDecodeQRCode(toString string: String, byViewController vc: QRCodeCaptureViewController)
}

// MARK: QRCodeCaptureViewController
class QRCodeCaptureViewController: UIViewController {

    // MARK: Public Properties
    var hideStatusBar = true
    var hideOutputLabel = false
    var outputLabelDefaultText = "No QRCode detected"

    var delegate: QRCodeCaptureDelegate?

    // MARK: Private Properties
    private var captureSession: AVCaptureSession?
    private var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    private var outputLabel: UILabel?

    override func prefersStatusBarHidden() -> Bool {
        if hideStatusBar {
            return true
        } else {
            return false
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpCapturing()
    }
}

// MARK: AVCaptureMetadataOutputObjectsDelegate
extension QRCodeCaptureViewController: AVCaptureMetadataOutputObjectsDelegate {
    func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, fromConnection connection: AVCaptureConnection!) {
        if metadataObjects == nil || metadataObjects.count == 0 {
            outputLabel?.text = outputLabelDefaultText
            return
        } else {
            // Get metadataObject
            guard let metadataObject = metadataObjects[0] as? AVMetadataMachineReadableCodeObject else { return }
            if metadataObject.type == AVMetadataObjectTypeQRCode {
                // show output
                guard let outputText = metadataObject.stringValue else { return }
                outputLabel?.text = outputText

                delegate?.didDecodeQRCode(toString: outputText, byViewController: self)
            }
        }
    }
}

// MARK: Capturing
extension QRCodeCaptureViewController {
    func setUpCapturing() {
        // Initialize video capture device
        let captureDevice = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)

        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            // Initialize capture session
            captureSession = AVCaptureSession()
            guard let captureSession = captureSession else { return }
            captureSession.addInput(input)
            // Initialize an instance of AVCaptureMetaDataOutput
            let captureMetaDataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(captureMetaDataOutput)

            // Set delegate for captureMetaDataOutput & use default queue for executing call back
            captureMetaDataOutput.setMetadataObjectsDelegate(self, queue: dispatch_get_main_queue())
            captureMetaDataOutput.metadataObjectTypes = [AVMetadataObjectTypeQRCode]

            // Initialize videoPreviewLayer
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            guard let videoPreviewLayer = videoPreviewLayer else { return }
            videoPreviewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
            videoPreviewLayer.frame = view.layer.bounds
            view.layer.addSublayer(videoPreviewLayer)

            // OutputLabel
            if !hideOutputLabel {
                // Initialize outputLabel
                outputLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 40.0))
                guard let outputLabel = outputLabel else { return }
                outputLabel.text = outputLabelDefaultText
                outputLabel.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)
                outputLabel.textColor = UIColor.whiteColor()
                outputLabel.textAlignment = .Center
                view.addSubview(outputLabel)
                view.bringSubviewToFront(outputLabel)
            }

            // Start captureSession
            captureSession.startRunning()
        } catch {
            print(error)
            return
        }
    }
}
