//
//  DetailViewController.swift
//  Assignment4
//
//  Created by Danielle Gomes on 2019-08-25.
//  Copyright © 2019 Danielle Gomes. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var city: City!
//    var name: String
//    var country: String
//    var temp: Int
//    var icon: String
//    var summary: String
    
    
    
//    let goDetailsButt: UIButton = {
//        let butt = UIButton(type: .system)
//        butt.translatesAutoresizingMaskIntoConstraints = false
//        butt.setTitle("Go see details...", for: .normal)
//        butt.backgroundColor = UIColor.darkGray
//        butt.layer.cornerRadius = 10.0
//        butt.addTarget(self, action: #selector(showDetailVC), for: .touchUpInside)
//        return butt
//    }()
    
    //let tokyo = City(name: "Tokyo", country: "Japan", temp: 23, icon: "japan", summary: "Hot")
    let cityLabel: UILabel = {
        let l = UILabel(frame: .zero)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let countryLabel: UILabel = {
        let l = UILabel(frame: .zero)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let tempLabel: UILabel = {
        let l = UILabel(frame: .zero)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let iconLabel: UILabel = {
        let l = UILabel(frame: .zero)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let summaryLabel: UILabel = {
        let l = UILabel(frame: .zero)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let detailStack = UIStackView(arrangedSubviews: [cityLabel, countryLabel, tempLabel, iconLabel, summaryLabel])
        detailStack.axis = .vertical
        detailStack.spacing = 50
        detailStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(detailStack)
        NSLayoutConstraint.activate([
            detailStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
