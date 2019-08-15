//
//  PreviewViewController.swift
//  data-collection
//
//  Created by Jade on 16/08/2019.
//  Copyright © 2019 Jade. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    
    @IBOutlet weak var capturedImageView: UIImageView!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        capturedImageView.image = image
    }

    @IBAction func okButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "returnAndSetPreviewImageSegue", sender: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "returnAndSetPreviewImageSegue" {
            let evaluationVC = segue.destination as! EvaluationViewController
            evaluationVC.previewImage = self.image
        }
    }
}
