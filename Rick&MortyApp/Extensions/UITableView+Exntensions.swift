//
//  UITableView+Exntensions.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation
import UIKit

extension UITableView {
    func setEmptyMessage(message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .systemGray2
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont.preferredFont(forTextStyle: .title2)
        messageLabel.sizeToFit()

        self.backgroundView = messageLabel
        self.separatorStyle = .none
    }

    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }

    func setLoading() {
        let activityIndicatorView = UIActivityIndicatorView(style: .medium)
        activityIndicatorView.color = .rickBlue
        self.backgroundView = activityIndicatorView
        activityIndicatorView.startAnimating()
        self.separatorStyle = .none
    }
}
