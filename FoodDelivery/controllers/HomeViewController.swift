//
//  HomeViewController.swift
//  FoodDelivery
//
//  Created by Muhammadjon Mamarasulov on 3/1/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeLabel: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()

        // Do any additional setup after loading the view.
    }


    func initViews(){
        navSettings()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "firstTableViewCell", bundle: nil), forCellReuseIdentifier: "firstTableViewCell")
        homeLabel.layer.shadowRadius = 15
        homeLabel.layer.shadowColor = UIColor.black.cgColor
        homeLabel.layer.shadowOpacity = 0.2
        homeLabel.layer.shadowOffset = .zero
    }
    
    // Navigation Controller
    func navSettings(){
        let menu = UIImage(named: "h1")
        let bell = UIImage(named: "h2")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: menu, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: bell, style: .plain, target: self, action: #selector(rightTapped))
        
        title = "HALAL FOODS"
    }
    
    
    @objc func leftTapped(){
        
    }
    
    @objc func rightTapped(){
        
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell", for: indexPath) as? firstTableViewCell else{return UITableViewCell() }
        
        return cell
    }
    
    
}
