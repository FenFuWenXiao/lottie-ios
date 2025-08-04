//
//  NSViewExtension.swift
//  Lottie-macOS
//
//  Created by xiaofuwen-MacBookPro on 04/08/25.
//

import Foundation
import AppKit

extension NSView {
    static var safeNoIntrinsicMetric: CGFloat {
        if #available(macOS 10.11, *) {
            return NSView.noIntrinsicMetric
        } else {
            // -1 is the documented fallback for "no intrinsic metric"
            return -1
        }
    }
}
