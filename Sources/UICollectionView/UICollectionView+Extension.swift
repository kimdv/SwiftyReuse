//
//  UICollectionView+Extension.swift
//  SwiftyReuse
//
//  Created by Kim de Vos on 29/10/2017.
//  Copyright © 2017 Kim de Vos. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {

    public func dequeue<T: Reusable>(_ cellClass: T.Type, ofKind kind: String? = nil, for indexPath: IndexPath) -> T {

        guard let kind = kind else {
            return dequeueReusableCell(withReuseIdentifier: cellClass.id, for: indexPath) as! T
        }

        return dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: cellClass.id, for: indexPath) as! T
    }

    public func register<T: Reusable>(_ cellClass: T.Type, ofKind kind: String? = nil) {
        if let kind = kind {
            register(UINib(nibName: cellClass.nibName, bundle: nil),
                     forSupplementaryViewOfKind: kind,
                     withReuseIdentifier: cellClass.id)
        } else {
            register(UINib(nibName: cellClass.nibName, bundle: nil),
                     forCellWithReuseIdentifier: cellClass.id)
        }
    }
}
