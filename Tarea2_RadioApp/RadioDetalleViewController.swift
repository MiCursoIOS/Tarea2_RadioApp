//
//  RadioDetalleViewController.swift
//  Tarea2_RadioApp
//
//  Created by Erikson Murrugarra on 1/9/18.
//  Copyright © 2018 DigitalPark. All rights reserved.
//

import UIKit

class RadioDetalleViewController: UIViewController {

    var nombreRadio: String!
    var eslogan: String!
    var frecuencia: String!
    var detalle: String!
    var imagen: String!
    
    @IBOutlet weak var imgRadio: UIImageView!
    @IBOutlet weak var lblEslogan: UILabel!
    @IBOutlet weak var lblFrecuencia: UILabel!
    @IBOutlet weak var textDetalle: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgRadio.image = UIImage(named: imagen)
        lblEslogan.text = eslogan
        lblFrecuencia.text = frecuencia
        textDetalle.text = detalle
        
        self.title = nombreRadio
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
