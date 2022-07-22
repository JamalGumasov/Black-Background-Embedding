//  FavouriteViewController.swift
//  Black Background Embedding
//
//  Created by Джамал Гумасов on 01.07.2022.
//

import UIKit

class FavouriteViewController: UIViewController {
    
//тема 12 айфона
    let imageView = UIImageView(image:  UIImage(named: "Topic"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMainImageView()
    
        
        let blurEffect = UIBlurEffect(style: .systemThinMaterial)
        let blurView = configureBlurView(effect: blurEffect)
        view.addSubview(blurView)
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect, style: .secondaryLabel)
        let vibrancyView = configureVibrancyView(effect: vibrancyEffect)
        blurView.contentView.addSubview(vibrancyView)
        
        //меняет цвет текста
        let vibrancyLabel = configureVibrantLabel()
        vibrancyView.contentView.addSubview(vibrancyLabel)
    //  view.addSubview(vibrancyLabel)
        
        vibrancyLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        vibrancyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    //настройка вида основного приложения
  func setupMainImageView() {
        view.backgroundColor = .white
        view.addSubview(imageView)
      imageView.frame = view.bounds
      imageView.contentMode = .scaleAspectFill
    }
    
    // расположение visual effect view with blur
    func configureBlurView(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 220, left: 42, bottom: 220, right: 42))
        return view
    }
    
    //расположение текста в favourite
    func configureVibrancyView(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 210, left: 42, bottom: 210, right: 42))
        return view
    }
    
    //текст в favourite
    func configureVibrantLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "first"
        label.textColor = .systemBackground
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .medium)
        return label
    }
    
    
}

