//
//  ViewIngredientes.swift
//  Pizzaap
//
//  Created by MIGUEL on 2/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//

import UIKit

class ViewIngredientes: UIViewController{
    
    var Ingredientes = [ "Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"];
    
    var IngJam:Bool = false
    var IngPep:Bool = false
    var IngPav:Bool = false
    var IngSal:Bool = false
    var IngAce:Bool = false
    var IngCeb:Bool = false
    var IngPim:Bool = false
    var IngPiñ:Bool = false
    var IngAnc:Bool = false
   
    
    var resultado: String = ""
    var tamano: String = ""
    var Masa: String = ""
    var Queso: String = ""
    var numeroIngredientes: Int = 0
    
    @IBOutlet weak var SwJamon: UISwitch!
    @IBOutlet weak var SwPepperoni: UISwitch!
    @IBOutlet weak var SwPavo: UISwitch!
    @IBOutlet weak var SwSalchichas: UISwitch!
    @IBOutlet weak var SwAceitunas: UISwitch!
    @IBOutlet weak var SWCebolla: UISwitch!
    @IBOutlet weak var SwPimiento: UISwitch!
    @IBOutlet weak var SwPiña: UISwitch!
    @IBOutlet weak var SwAnchoa: UISwitch!
    
    override func viewWillAppear(animated: Bool) {
        LabelTamano.text = tamano
        LabelMasa.text = Masa
        LabelQueso.text = Queso
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Siguiente.enabled = false
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as!ViewPreparar
        sigVista.tamano = LabelTamano.text!
        sigVista.Masa = LabelMasa.text!
        sigVista.Queso = LabelQueso.text!
        sigVista.Ingredientes = RellenaIngredientes()
    }
    
    func RellenaIngredientes() ->String {
        var Lista:String = ""
        
        if IngJam == true { Lista = Lista + "Jamón, " }
        if IngPep == true { Lista = Lista + "Pepperoni, " }
        if IngPav == true { Lista = Lista + "Pavo, " }
        if IngSal == true { Lista = Lista + "Salchichas, " }
        if IngAce == true { Lista = Lista + "Aceitunas, " }
        if IngCeb == true { Lista = Lista + "Cebolla, " }
        if IngPim == true { Lista = Lista + "Pimiento, " }
        if IngPiñ == true { Lista = Lista + "Piña, " }
        if IngAnc == true { Lista = Lista + "Anchoa, " }
        
        return Lista
    }
    
    @IBAction func ChSwJamon(sender: UISwitch) {
        if SwJamon.on == true {
            Siguiente.enabled = true; numeroIngredientes += 1; IngJam = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwJamon.setOn(false, animated: true)
                numeroIngredientes -= 1; IngJam = false
            }
        } else {
            numeroIngredientes -= 1; IngJam = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwPepperoni(sender: UISwitch) {
        if SwPepperoni.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngPep = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwPepperoni.setOn(false, animated: true)
                numeroIngredientes -= 1; IngPep = false
            }
        } else {
            numeroIngredientes -= 1; IngPep = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwPavo(sender: UISwitch) {
        if SwPavo.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngPav = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwPavo.setOn(false, animated: true)
                numeroIngredientes -= 1; IngPav = false
            }
        } else {
            numeroIngredientes -= 1; IngPav = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwSalchichas(sender: UISwitch) {
        if SwSalchichas.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngSal = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwSalchichas.setOn(false, animated: true)
                numeroIngredientes -= 1; IngSal = false
            }
        } else {
            numeroIngredientes -= 1; IngSal = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwAceitunas(sender: UISwitch) {
        if SwAceitunas.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngAce = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwAceitunas.setOn(false, animated: true)
                numeroIngredientes -= 1; IngAce = false
            }
        } else {
            numeroIngredientes -= 1; IngAce = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwCebolla(sender: UISwitch) {
        if SWCebolla.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngCeb = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SWCebolla.setOn(false, animated: true)
                numeroIngredientes -= 1; IngCeb = false
            }
        } else {
            numeroIngredientes -= 1; IngCeb = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwPimiento(sender: UISwitch) {
        if SwPimiento.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngPim = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwPimiento.setOn(false, animated: true)
                numeroIngredientes -= 1; IngPim = false
            }
        } else {
            numeroIngredientes -= 1; IngPim = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwPiña(sender: UISwitch) {
        if SwPiña.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngPiñ = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwPiña.setOn(false, animated: true)
                numeroIngredientes -= 1; IngPiñ = false
            }
        } else {
            numeroIngredientes -= 1; IngPiñ = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    @IBAction func ChSwAnchoa(sender: UISwitch) {
        if SwAnchoa.on {
            Siguiente.enabled = true; numeroIngredientes += 1; IngAnc = true
            if numeroIngredientes > 5 {
                mensaje("Solo se pueden elegir 5 Ingredientes")
                SwAnchoa.setOn(false, animated: true)
                numeroIngredientes -= 1; IngAnc = false
            }
        } else {
            numeroIngredientes -= 1; IngAnc = false
            if numeroIngredientes == 0 { Siguiente.enabled = false}
        }
    }
    
    
    @IBOutlet weak var LabelQueso: UILabel!
    
    @IBOutlet weak var LabelMasa: UILabel!
    @IBOutlet weak var LabelTamano: UILabel!
    
    @IBOutlet weak var Siguiente: UIButton!
    
    func mensaje (Texto: String) {
        let alertController = UIAlertController(title: "Pizza", message:
            Texto, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Cerrar", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
