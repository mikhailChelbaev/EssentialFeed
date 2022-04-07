//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Mikhail on 07.04.2022.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
