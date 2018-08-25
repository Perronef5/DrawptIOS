//
//  ProductCell.swift
//  Caido
//
//  Created by Daniel on 8/19/18.
//  Copyright © 2018 Daniel. All rights reserved.
//


import UIKit

class ProductCell : UICollectionViewCell
{
    let productNameLabel : UILabel =
    {
        let label = UILabel()
        label.text = "Yeezy Beluga 1.0"
        label.font = label.font.withSize(25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel : UILabel =
    {
        let label = UILabel()
        label.text = "Size 10"
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 15)
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.light)
        label.textColor = UIColor(red: 155, green: 155, blue: 155)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productImageView : UIImageView =
    {
        let imageView = UIImageView(image: UIImage(named: "yeezy.png"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        layer.cornerRadius = 10
        backgroundColor = UIColor.white
        
        setupShadow()
        setupProductNameLabel()
        setupDescriptionLabel()
        setupProductImageView()
    }
    
    func setupShadow()
    {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.125
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 10, height: 10)
    }
    
    func setupProductNameLabel ()
    {
        addSubview(productNameLabel)
        
        productNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        productNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        productNameLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        productNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    }
    
    func setupDescriptionLabel ()
    {
        addSubview(descriptionLabel)
        
        descriptionLabel.leftAnchor.constraint(equalTo: productNameLabel.leftAnchor).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        descriptionLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        descriptionLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    }
    
    func setupProductImageView ()
    {
        addSubview(productImageView)
        
        productImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        productImageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        productImageView.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor).isActive = true
        productImageView.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
