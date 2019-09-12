//
//  ViewController.swift
//  IMCNavigation
//
//  Created by labdesarrollo5 on 9/5/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtaltura: UITextField!
    var Peso:Double = 0.0
    var Altura:Double = 0.0
    var imc:Double = 0.0
    
    @IBOutlet weak var txtpeso: UITextField!
    
    @IBAction func btncalcular(_ sender: UIButton) {
        
        if(txtpeso.text?.isEmpty)!{
             showAlerta(titulo: "Error", mensaje: "Ingrese la altura")
        }else if (txtaltura.text?.isEmpty)!{
             showAlerta(titulo: "Error", mensaje: "Ingrese su peso")
        }
        else{
            Peso = Double(txtpeso.text!)!
            Altura = Double(txtaltura.text!)!
            imc=Peso/(Altura*Altura)
            if(imc>=18&&imc<25){
                self.performSegue(withIdentifier: "segueverde", sender: self)
            }else if(imc>=25 && imc<30){
                self.performSegue(withIdentifier: "segueamarillo", sender: self)
            }else if(imc>=30){
                self.performSegue(withIdentifier: "seguerojo", sender: self)
            }else{
                showAlerta(titulo: "Advertencia", mensaje: "USTED TIENE ANEMIA")            }
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
        if (segue.identifier == "segueverde"){
            let segueimc = segue.destination as! ViewControllerverde
            segueimc.imc = imc
        }else if (segue.identifier == "segueamarillo"){
            let segueimc = segue.destination as! ViewControlleramarillo
            segueimc.imc = imc
        }else if (segue.identifier == "seguerojo"){
            let segueimc = segue.destination as! ViewControllerrojo
            segueimc.imc = imc
        }
        
    }
    
}

