//
//  Reusable.swift
//  SwiftyReuse
//
//  Created by Kim de Vos on 29/10/2017.
//  Copyright © 2017 Kim de Vos. All rights reserved.
//

import Foundation

public protocol Reusable: class where Self: UIView {
    static var id: String { get }

    static var nibName: String { get }
}
