//
//  EvaluationViewController.swift
//  data-collection
//
//  Created by Jade on 15/08/2019.
//  Copyright © 2019 Jade. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class EvaluationViewController: UIViewController {
    
    let evaluations = ["Service", "Flavor", "Hygiene", "Price", "Creativity"]
    let tastes = ["Spicy", "Sweetness", "Sour", "Salty"]
    
    var previewImage: UIImage?
    
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var preferenceView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        previewImageView.image = self.previewImage == nil ? UIImage(named: "NoImage") : previewImage
        
        for evaluation in evaluations {
            //let ratingView = createRatingView(name: evaluation)
            let ratingView = RatingView()
            ratingView.setLabelText(text: evaluation)

            preferenceView.addArrangedSubview(ratingView)
            ratingView.leadingAnchor.constraint(equalTo: preferenceView.leadingAnchor).isActive = true
            ratingView.trailingAnchor.constraint(equalTo: preferenceView.trailingAnchor).isActive = true
            ratingView.heightAnchor.constraint(equalToConstant: 50).isActive = true
 
        }
        
        for taste in tastes {
            let ratingView = RatingView()
            ratingView.setLabelText(text: taste)
            
            preferenceView.addArrangedSubview(ratingView)
            ratingView.leadingAnchor.constraint(equalTo: preferenceView.leadingAnchor).isActive = true
            ratingView.trailingAnchor.constraint(equalTo: preferenceView.trailingAnchor).isActive = true
            ratingView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        for subView in preferenceView.subviews {
            
            if let rv = subView as? RatingView {
                rv.setRating(rating: 0.0)
            }
            
        }
    }
}
