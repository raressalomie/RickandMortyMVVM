//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Tiberiu Rares Salomie on 23/3/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
