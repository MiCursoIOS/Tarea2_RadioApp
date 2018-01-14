//
//  RadioDetalleViewController.swift
//  Tarea2_RadioApp
//
//  Created by Erikson Murrugarra on 1/9/18.
//  Copyright © 2018 DigitalPark. All rights reserved.
//

import UIKit

class RadioDetalleViewController: UIViewController {

    var radio = [String:String]()
    
    @IBOutlet weak var imgRadio: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgRadio.image = UIImage(named: radio["imagen"]!)
        self.title = radio["nombre"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
