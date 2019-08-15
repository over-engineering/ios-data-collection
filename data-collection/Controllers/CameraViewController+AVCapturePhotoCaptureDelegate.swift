//
//  CameraViewController+AVCapturePhotoCaptureDelegate.swift
//  data-collection
//
//  Created by Jade on 16/08/2019.
//  Copyright © 2019 Jade. All rights reserved.
//

import UIKit
import AVFoundation

extension CameraViewController: AVCapturePhotoCaptureDelegate {
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if let imageData = photo.fileDataRepresentation() {
            self.capturedImage = UIImage(data: imageData)
            performSegue(withIdentifier: "showPhotoPreviewSegue", sender: nil)
            // goto prepare method
        }
    }
}
