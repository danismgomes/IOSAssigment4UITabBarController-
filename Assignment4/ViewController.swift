//
//  ViewController.swift
//  Assignment4
//
//  Created by Danielle Gomes on 2019-08-25.
//  Copyright © 2019 Danielle Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let goDetailsButt: UIButton = {
        let butt = UIButton(type: .system)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.setTitle("Go see details...", for: .normal)
        butt.backgroundColor = UIColor.darkGray
        butt.layer.cornerRadius = 10.0
        butt.addTarget(self, action: #selector(showDetailVC), for: .touchUpInside)
        return butt
    }()
    
    @objc private func showDetailVC() {
        let detailVC = DetailViewController()
        detailVC.city = city
        detailVC.cityLabel.text = "City Name: \(city.name)"
        detailVC.countryLabel.text = "Country: \(city.country)"
        detailVC.tempLabel.text = "Temp: \(city.temp)˚C"
        detailVC.iconLabel.text = city.icon
        detailVC.summaryLabel.text = city.summary
        detailVC.view.backgroundColor = .cyan
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    // depedency injection
    // you have to initialize all properties
    var city: City! {
        didSet {
            tabBarItem = UITabBarItem(title: city.name, image: UIImage(named: "icons8-city-50.png"), selectedImage: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = city.name
        view.addSubview(goDetailsButt)
        
        NSLayoutConstraint.activate([
            goDetailsButt.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goDetailsButt.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
    }


}

