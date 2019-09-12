//
//  ViewControlleramarillo.swift
//  IMCNavigation
//
//  Created by labdesarrollo5 on 9/5/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewControlleramarillo: UIViewController {
    @IBOutlet weak var lblIMCa: UILabel!
    var imc: Double!
    override func viewDidLoad() {
        super.viewDidLoad()
    lblIMCa.text = "Tu IMC Es De: \(String(imc))"        // Do any additional setup after loading the view.
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
