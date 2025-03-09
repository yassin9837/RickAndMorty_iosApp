//
//  ViewController.swift
//  RickAndMorty
//
//  Created by hq dev on 05/03/2025.
//

import UIKit

/// Controller to Show and search for Character
 final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Character"
        let my = RMRequest(
            endpoint: .character ,
            pahtcomponents: ["1"],
            queryparameters: [URLQueryItem(name: "name", value: "rick"), URLQueryItem(name: "status", value: "alive")]
            
        )
        print(my.url)
        

    }
     

  

}

