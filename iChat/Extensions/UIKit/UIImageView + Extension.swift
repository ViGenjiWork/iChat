//
//  UIImageView + Extension.swift
//  iChat
//
//  Created by admin on 14.01.2022.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
    
    
}
