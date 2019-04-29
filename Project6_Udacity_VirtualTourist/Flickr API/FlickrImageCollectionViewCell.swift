//
//  FlickrImageCollectionViewCell.swift
//  Project6_Udacity_VirtualTourist
//
//  Created by Franziska Kammerl on 8/19/18.
//  Copyright © 2018 Franziska Kammerl. All rights reserved.
//

import UIKit

class FlickrImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    /**
     Changes the alpha of the selected cell, to make it standout in the collection
     */
    override var isSelected: Bool {
        didSet {
            imageView.alpha =  isSelected ? 0.3 : 1
        }
    }
    
    /**
     Responsible for updating the imageView and activity indicator on per cell basis
     */
    func update(with image:UIImage?) {
        if let imageToDisplay = image {
            activityIndicator.stopAnimating()
            imageView.image = imageToDisplay
        }
        else {
            activityIndicator.startAnimating()
            imageView.image = nil
        }
    }
    
    // Called when the cell is first created
    override func awakeFromNib() {
        super.awakeFromNib()
        
        update(with: nil)
    }
    
    
    // Called when cell is about to be reused
    override func prepareForReuse() {
        super.prepareForReuse()
        
        update(with: nil)
    }
}
