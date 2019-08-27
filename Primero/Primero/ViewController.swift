import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtA: UITextField!
    @IBOutlet weak var txtB: UITextField!
    @IBAction func btnmayor(_ sender: UIButton) {
        
        var n1: Int!
        var n2: Int!
        var res: Int!
        
        n1=Int(txtA.text!)
        n2=Int(txtB.text!)
        
        if n1>n2 {
            res=n1
        }
        else{
            res=n2
        }
        lblmayor.text = "\(res)"
    }
    @IBOutlet weak var lblmayor: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

