//
//  ViewController.swift
//  movie
//
//  Created by IFPB on 26/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var lbQuantidade: UILabel!
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let quantidade = (UIApplication.shared.delegate as! AppDelegate).cadastro.count()
        self.lbQuantidade.text = String(quantidade)
    }

}

