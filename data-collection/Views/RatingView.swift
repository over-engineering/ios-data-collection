//
//  RatingView.swift
//  data-collection
//
//  Created by Jade on 16/08/2019.
//  Copyright © 2019 Jade. All rights reserved.
//

import UIKit
import Cosmos

class RatingView: UIStackView {
    
    private var label: UILabel!
    private var cosmosContainerView: UIView!
    private var cosmosView: CosmosView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label = UILabel()
        cosmosContainerView = UIView()
        cosmosView = CosmosView()
        
        self.axis = .horizontal
        self.alignment = .fill
        self.distribution = .fill
        self.spacing = 5
        self.addArrangedSubview(label)
        self.addArrangedSubview(cosmosContainerView)
        
        label.text = ""
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: 130).isActive = true
        
        cosmosContainerView.addSubview(cosmosView)
        cosmosView.centerInSuperview()
        cosmosView.rating = 0
        cosmosView.settings.minTouchRating = 0.5
        cosmosView.settings.fillMode = .half // .full, .half, .precise
        cosmosView.settings.starSize = 25
        cosmosView.settings.filledImage = UIImage(named: "GoldStar")
        cosmosView.settings.emptyImage = UIImage(named: "GoldStarEmpty")
    }
    
    func setLabelText(text: String) {
        label.text = text
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
