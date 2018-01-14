//
//  RadioListTableViewController.swift
//  Tarea2_RadioApp
//
//  Created by Erikson Murrugarra on 1/9/18.
//  Copyright © 2018 DigitalPark. All rights reserved.
//

import UIKit

class RadioTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgRadio: UIImageView!
    @IBOutlet weak var lblNombreRadio: UILabel!
    
}

class RadioListTableViewController: UITableViewController {
    
    var radioList = [[String: String]]()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return radioList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaRadio", for: indexPath) as! RadioTableViewCell
        
        let radio = radioList[indexPath.row]
        cell.imgRadio?.image = UIImage(named: radio["imagen"]!)
        cell.lblNombreRadio?.text = radio["nombre"]
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let radioDetalle = segue.destination as! RadioDetalleViewController
        
        let radioSeleccionada = tableView.indexPathForSelectedRow!.row
        let radio = radioList[radioSeleccionada]

        radioDetalle.radio = radio
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        DataBase.checkAndCreateDatabase(withName: "radios.db")
        let datos = DataBase().ejecutarSelect("select * from radios") as! [[String: String]]
        
        radioList = datos
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

 }
