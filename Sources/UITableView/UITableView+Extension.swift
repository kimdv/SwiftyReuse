//
//  UITableView+Extension.swift
//  SwiftyReuse
//
//  Created by Kim de Vos on 29/10/2017.
//  Copyright © 2017 Kim de Vos. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {

    public func dequeue<T: Reusable>(_ cellClass: T.Type, ofKind kind: String? = nil, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: cellClass.id, for: indexPath) as! T
    }

    public func register<T: Reusable>(_ cellClass: T.Type, ofKind kind: String? = nil) {
        self.register(UINib(nibName: cellClass.nibName, bundle: nil), forCellReuseIdentifier: cellClass.id)
    }
}
