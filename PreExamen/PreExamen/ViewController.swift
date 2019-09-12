//
//  ViewController.swift
//  PreExamen
//
//  Created by labdesarrollo5 on 9/4/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtaltura: UITextField!
    
    var altura: Double = 0.0
    var base: Double = 0.0
    var res: Double = 0.0
    
    @IBOutlet weak var txtbase: UITextField!
    
    @IBAction func btncalcular(_ sender: UIButton) {
        if(txtaltura.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Falta ingresar altura")
        }else if(txtbase.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Falta ingresar base")
        }else{
            altura = Double(txtaltura.text!)!
            base = Double(txtbase.text!)!
            res = (base * altura)/2
            
            //showAlerta(titulo: "Area", mensaje: "El area del triangulo es \(res)")
        }
        
        
    }
    
    func showAlerta(titulo: String, mensaje: String){
        //Crea La Alerta
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        //Agregar Un Boton
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        //Muestra El Alerta
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueenvio"){
            let segueenvio = segue.destination as! ViewControllerResultado
            segueenvio.res = res
            
        }
    }
    
}

