//
//  CustomTableViewCell.swift
//  NoStoryboard
//
//  Created by Дмитрий Бельков on 09.03.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var labelNameTrack: UILabel!
    
    let imageViewCell: UIImageView = {
        let image = UIImage(named: "111")
        //let imageView = UIImageView(image: image)
        let imageView = UIImageView(frame: CGRect(x: 5, y: 5, width: 100, height: 100))
        
        imageView.layer.borderWidth = 1.0
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 50
        imageView.image = image
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        labelNameTrack = UILabel(frame: contentView.bounds)
        labelNameTrack.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        
        contentView.addSubview(labelNameTrack)
        contentView.addSubview(imageViewCell)
        //setupImageViewCell()
    }
    
    func setupImageViewCell() {
        imageViewCell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -4).isActive = true
        imageViewCell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 4).isActive = true
        imageViewCell.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 4).isActive = true
       
        
        
        
    }


//
//    let labelNameTrack: UILabel = {
//        let label = UILabel()
//        label.text = "AK-47"
//        label.textAlignment = .center
//        label.font = UIFont(name: "AmericanTypewriter", size: 21)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//        }()
//
//    let labelInfoTrack: UILabel = {
//        let label = UILabel()
//        label.text = "AK-47 fsdfsdfsdf"
//        label.textAlignment = .center
//        label.font = UIFont(name: "AmericanTypewriter-Light", size: 21)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    let labelTime: UILabel = {
//        let label = UILabel()
//        label.text = "10:20:30"
//        label.textAlignment = .center
//        label.font = UIFont(name: "AmericanTypewriter-Light", size: 21)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()

}
