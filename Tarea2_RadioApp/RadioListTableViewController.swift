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
    @IBOutlet weak var lblEslogan: UILabel!
    
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
        cell.lblEslogan?.text = radio["eslogan"]
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let radioDetalle = segue.destination as! RadioDetalleViewController
        
        let radioSeleccionada = tableView.indexPathForSelectedRow!.row
        let radio = radioList[radioSeleccionada]
        
        radioDetalle.imagen = radio["imagen"]
        radioDetalle.nombreRadio = radio["nombre"]
        radioDetalle.eslogan = radio["eslogan"]
        radioDetalle.frecuencia = radio["frecuencia"]
        radioDetalle.detalle = radio["detalle"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        radioList = [["nombre": "Radio Capital", "eslogan": "Tu opinion Importa",
                      "detalle": "Radio Capital es una emisora de radio peruana de entretenimiento, miscelánea, deportes, información y musical, transmitiendo en varias ciudades del país, su propietario es el Grupo RPP",
                      "frecuencia": "96.7 FM; 1470 AM","imagen": "capital"],
                     
                     ["nombre": "Exitosa Noticias", "eslogan": "",
                      "detalle": "Radio Exitosa es una emisora de radio peruana de información, miscelánea y deportes es propiedad de Corporación Universal",
                      "frecuencia": "95.5 FM","imagen": "exitosa"],
                     
                     ["nombre": "Planeta", "eslogan": "Tu música en inglés",
                      "detalle": "Planeta es una emisora de radio peruana juvenil que transmite géneros como Pop, Electro pop y Hip hop en inglés, que transmite en Lima, Arequipa, Asia, su propietario es CRP Radios",
                      "frecuencia": "107.7 FM","imagen": "planeta"],                   
                     
                     ["nombre": "Moda", "eslogan": "Te mueve!... con la música que esta de moda",
                      "detalle": "Moda es una emisora de radio peruana juvenil de Reggaetón, Trap, Latin, Salsa, Bachata, Pop. transmite en varias ciudades, su propietario es CRP Radios.",
                      "frecuencia": "97.3 FM","imagen": "moda"],
                     
                     ["nombre": "Radio Oasis", "eslogan": "Oasis, Rock & pop",
                      "detalle": "Radio Oasis es una emisora de radio peruana de Rock & Pop en español y en inglés de los años 80, 90, 2000 y algunas canciones de hoy, que transmite en la ciudad de Lima, su propietario es CRP Radios.",
                      "frecuencia": "100.1 FM","imagen": "oasis"],
                     
                     ["nombre": "Panamericana", "eslogan": "¡Lo que el perú quiere escuchar!",
                      "detalle": "Radio Panamericana es una emisora de radio peruana, que transmite desde Lima y llega a todo el Perú vía satélite. Pertenece al Grupo Panamericana de Radios.",
                      "frecuencia": "101.1 FM MHz; 960 AM KHz","imagen": "panamericana"],
                     
                     ["nombre": "Radiomar Plus", "eslogan": "¡Vive gozando!",
                      "detalle": "Radiomar es una emisora de radio peruana que transmite géneros musicales latinos de salsa, bachata, latin, reggaeton. transmite en la ciudad de Lima, su propietario es CRP Radios.",
                      "frecuencia": "106.3 FM","imagen": "radiomar"],
                     
                     ["nombre": "Ritmo Romantica", "eslogan": "Tu radio de baladas",
                      "detalle": "Ritmo Romántica es una emisora de radio peruana de baladas en español de los 90, s, 2000, s y actuales que transmite en varias ciudades, su propietario es CRP Radios.",
                      "frecuencia": "93.1 FM ","imagen": "ritmo_romantica"],
                     
                     ["nombre": "RPP Noticias", "eslogan": "RPP Noticias, 24 horas de información.",
                      "detalle": "Radio Programas del Perú es una red de emisoras de radio de Perú, perteneciente al Grupo RPP. Es la cadena radial de mayor cobertura en el Perú y una de las más importantes y sintonizadas del país.",
                      "frecuencia": "89.7 MHz FM","imagen": "rpp"],
                     
                     ["nombre": "Studio 92", "eslogan": "Primeros en tu música",
                      "detalle": "Studio 92 es una emisora de radio peruana de música juvenil en inglés y algunas en español de pop, electro, hip hop, reggae de alcance nacional. Su propietario es el Grupo RPP.​",
                      "frecuencia": "92.5 FM","imagen": "studio92"],
                     
                     ["nombre": "Viva FM", "eslogan": "",
                      "detalle": "Viva FM es una emisora peruana que transmite música del género pop, electropop, hip hop, reggae, latin y reggaeton, ubicada en la ciudad peruana de Lima, reemplazante de la desaparecida radio Fuego.",
                      "frecuencia": " 104.7 Mhz FM","imagen": "viva"],
                     
                     ["nombre": "Z Rock & Pop", "eslogan": "La marca de la buena música",
                      "detalle": "Radio Z Rock and Pop es una estación de radio peruana más popular en el estilo de Rock y Pop de Perú. ",
                      "frecuencia": "Online","imagen": "z_rock_pop"]
                    ]
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

 }
