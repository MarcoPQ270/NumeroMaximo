//
//  ViewControllerResultado.swift
//  PreExamen
//
//  Created by labdesarrollo5 on 9/4/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewControllerResultado: UIViewController {

    var res: Double!
    
    @IBOutlet weak var txtresultado: UILabel!
    
    override func viewDidLoad() {
        txtresultado.text = "El area es de: \(String(res))"
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
