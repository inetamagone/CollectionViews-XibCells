//
//  ImageCollectionViewCell.swift
//  CollectionViews-XibCells
//
//  Created by ineta.magone on 23/02/2022.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var commonView: UIView!
    
    static var reuseId: String = "imageCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
        backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func initView() {
        Bundle.main.loadNibNamed("ImageCollectionViewCell", owner: self, options: nil)
        addSubview(commonView)
        NSLayoutConstraint.activate([
            commonView.leadingAnchor.constraint(equalTo: leadingAnchor),
            commonView.trailingAnchor.constraint(equalTo: trailingAnchor),
            commonView.topAnchor.constraint(equalTo: topAnchor),
            commonView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        commonView.backgroundColor = .black
    }
}
