//
//  MainTBC.swift
//  FoodDelivery
//
//  Created by Muhammadjon Mamarasulov on 3/1/22.
//

import UIKit

class MainTBC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tabBarSettings()
    }
    
    func tabBarSettings(){
        let vc1 = UINavigationController(rootViewController: HomeViewController(nibName: "HomeViewController", bundle: nil))
        vc1.tabBarItem.image = UIImage(systemName: "house")
        
        let vc2 = SecondViewController(nibName: "SecondViewController", bundle: nil)
        vc2.tabBarItem.image = UIImage(systemName: "phone")
        
        let vc3 = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        vc3.tabBarItem.image = UIImage(systemName: "cart")
        
        let vc4 = FourthViewController(nibName: "FourthViewController", bundle: nil)
        vc4.tabBarItem.image = UIImage(systemName: "person")
        
        let vc = [vc1,vc2,vc3,vc4]
        viewControllers = vc
    }
    

}
