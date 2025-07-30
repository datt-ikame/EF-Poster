//
//  CameraVC.swift
//  EasyPosterApp
//
//  Created by Trần Đạt on 30/7/25.
//

import UIKit
import AVFoundation

class CameraVC: UIViewController {
    @IBOutlet weak var flashButton: UIButton!
    @IBOutlet weak var cameraPreviewView: UIView!
    
    // MARK: - Properties
    private var previewLayer: AVCaptureVideoPreviewLayer!
    private let captureSession = AVCaptureSession()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCamera()
    }
    
    private func configCamera() {
        guard let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back),
              let input = try? AVCaptureDeviceInput(device: device) else { return }
        captureSession.addInput(input)
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = cameraPreviewView.bounds
        cameraPreviewView.layer.addSublayer(previewLayer)
        captureSession.startRunning()
    }

    @IBAction func tapClose(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func tapFlash(_ sender: UIButton) {
        
    }
    
    @IBAction func tapPhoto(_ sender: UIButton) {
        
    }
    
    @IBAction func tapCapture(_ sender: UIButton) {
        
    }
    
    @IBAction func tapFlip(_ sender: UIButton) {
        
    }
}
