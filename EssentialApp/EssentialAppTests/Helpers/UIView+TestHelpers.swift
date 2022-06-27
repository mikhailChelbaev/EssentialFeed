//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Mikhail on 28.06.2022.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
