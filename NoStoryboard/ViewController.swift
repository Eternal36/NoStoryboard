//
//  ViewController.swift
//  NoStoryboard
//
//  Created by Дмитрий Бельков on 04.03.2021.
//

import UIKit

class ViewController: UIViewController {

    let imageView: UIImageView = {
        let image = UIImage(named: "111")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageViewBackground: UIImageView = {
        
        let image = UIImage(named: "111")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
    
        return imageView
    }()
    
    let labelName: UILabel = {
        let label = UILabel()
        label.text = "AK-47"
        label.textAlignment = .center
        label.font = UIFont(name: "AmericanTypewriter", size: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        }()
    
    let labelInfo: UILabel = {
        let label = UILabel()
        label.text = "AK-47 fsdfsdfsdf"
        label.textAlignment = .center
        label.font = UIFont(name: "AmericanTypewriter-Light", size: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "right-arrow")
        button.setImage(image, for: .normal)
        button.layer.cornerRadius = 40
        button.clipsToBounds = true
        return button
        
    }()
    
    let slider: UISlider = {
        
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        //slider.tintColor = .white
        slider.thumbTintColor = .gray
        return slider
        
    }()
    
    let buttonPrevTrack: UIButton = {
        
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        //let image = UIImage(named: "right-arrow")
        //button.setImage(image, for: .normal)
        button.setTitle("Предыдущие треки", for: .normal)
        //button.titleLabel?.text = "Ffsdfdsf"
        button.titleLabel?.tintColor = .gray
        //button.backgroundColor = .black
        //button.clipsToBounds = true
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img = UIImage(named: "111")
        img?.withTintColor(.white, renderingMode: .automatic)
        view.backgroundColor = UIColor(patternImage: img!)
        let blurEffect = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        blurEffect.frame = self.view.bounds
       
        view.addSubview(imageViewBackground)
        view.addSubview(blurEffect)
        view.addSubview(imageView)
        view.addSubview(labelName)
        view.addSubview(labelInfo)
        view.addSubview(button)
        view.addSubview(slider)
        view.addSubview(buttonPrevTrack)
        
      //  setupImageViewBackground()
        setupImageView()
        setupLabelName()
        setupLabelInfo()
        setupButton()
        setupSlider()
        setupButtonPrevTrack()
       
        
        
        }
    
    
    func setupImageViewBackground() {
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        
    }
    
    func setupImageView() {
        
        imageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        
    }
    
    func setupLabelName() {
        
        labelName.heightAnchor.constraint(equalToConstant: 21).isActive = true
        labelName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        labelName.leftAnchor.constraint(equalTo: imageView.leftAnchor).isActive = true
        labelName.rightAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
      
        
    }
    
    func setupLabelInfo() {
        
        labelInfo.heightAnchor.constraint(equalToConstant: 21).isActive = true
        labelInfo.widthAnchor.constraint(equalTo: labelName.widthAnchor).isActive = true
        labelInfo.centerXAnchor.constraint(equalTo: labelName.centerXAnchor).isActive = true
        labelInfo.centerYAnchor.constraint(equalTo: labelName.centerYAnchor, constant: 25).isActive = true
    }
    
    func setupButton() {
        
        button.topAnchor.constraint(equalTo: labelInfo.bottomAnchor, constant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: labelInfo.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        
    }
    
    func setupSlider() {
        
        slider.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
        slider.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 150).isActive = true
        slider.heightAnchor.constraint(equalToConstant: 21).isActive = true
        slider.widthAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
    }
    
    func setupButtonPrevTrack() {
        
        buttonPrevTrack.centerXAnchor.constraint(equalTo: slider.centerXAnchor).isActive = true
        buttonPrevTrack.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: 8).isActive = true
        buttonPrevTrack.widthAnchor.constraint(equalTo: slider.widthAnchor).isActive = true
        buttonPrevTrack.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let vc = TableViewController()
        present(vc, animated: true, completion: nil)
    }
    
    
    


}

