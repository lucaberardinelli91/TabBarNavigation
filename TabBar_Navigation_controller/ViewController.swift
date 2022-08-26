//
//  ViewController.swift
//  TabBar_Navigation_controller
//
//  Created by Luca Berardinelli on 26/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        view.addSubview(button)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        button .center = view.center
    }
    
    @objc func didTapButton(){
        let tabBarVc = UITabBarController()
        
        //        let vc1 = FirstViewController()
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        vc1.title = "Tab1"
        
        //        let vc2 = SecondViewController()
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        vc2.title = "Tab2"
        
        //        let vc3 = ThirdViewController()
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        vc3.title = "Tab3"
        
        //        let vc4 = FourthViewController()
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        vc4.title = "Tab4"
        
        //        let vc5 = FifthViewController()
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        vc5.title = "Tab5"
        
        tabBarVc.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVc.tabBar.items else {
            return
        }
        
        for item in items {
            item.badgeValue = "1"
            item.image = UIImage(systemName: "house")
        }
        
        //        tabBarVc.modalPresentationStyle = .fullScreen
        present(tabBarVc, animated: true )
    }
}

class FirstViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Welcome", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Tab1"
        view.addSubview(button)
        button.center = view.center
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    @objc func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didTapButton(){
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Tab2"
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Tab3"
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Tab4"
    }
}

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Tab5"
    }
}

