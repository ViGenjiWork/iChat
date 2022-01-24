//
//  SelfConfigurationCell.swift
//  iChat
//
//  Created by admin on 21.01.2022.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
