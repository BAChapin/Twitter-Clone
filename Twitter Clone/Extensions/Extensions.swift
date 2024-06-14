//
//  Extensions.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
