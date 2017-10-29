//
//  UICollectionViewCell+Extension.swift
//  SwiftyReuse
//
//  Created by Kim de Vos on 29/10/2017.
//  Copyright © 2017 Kim de Vos. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionViewCell: Reusable {
    open static var id: String {
        return NSStringFromClass(self)
    }

    open static var nibName: String {
        return NSStringFromClass(self)
    }

}
