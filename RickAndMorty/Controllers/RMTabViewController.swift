//
//  ViewController.swift
//  RickAndMorty
//
//  Created by hq dev on 05/03/2025.
//

import UIKit

/// Controller to house tabs and root tab controller
final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        SetUpTabs()
        
        }
     func SetUpTabs(){
        let characterVC = RMCharacterViewController()
         let locationVC = RMLocationViewController()
         let settingsVC = RMSettingsViewController()
         let episodeVC = RMEpisodeViewController()
         characterVC.navigationItem.largeTitleDisplayMode = .automatic
         locationVC.navigationItem.largeTitleDisplayMode = .automatic
         episodeVC.navigationItem.largeTitleDisplayMode = .automatic
         settingsVC.navigationItem.largeTitleDisplayMode = .automatic
         
         
         
         let nva1 = UINavigationController(rootViewController: characterVC)
         let nva2 = UINavigationController(rootViewController: locationVC)
         let nva3 = UINavigationController(rootViewController: episodeVC)
         let nva4 = UINavigationController(rootViewController: settingsVC )
         
         
         nva1.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "person.fill" ), tag: 1)
         nva2.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 2)
         nva3.tabBarItem = UITabBarItem(title: "Episode", image: UIImage(systemName:  "tv"), tag: 3)
         nva4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear.circle"), tag: 4)
         
         for nav in [nva1,nva2,nva3,nva4] {
             nav.navigationBar.prefersLargeTitles = true
             
             
           
             
         }
                
         
         setViewControllers([nva1,nva2,nva3,nva4], animated: true)
         
        
        
    }


}

