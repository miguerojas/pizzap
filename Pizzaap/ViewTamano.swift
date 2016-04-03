//
//  ViewTamano.swift
//  Pizzaap
//
//  Created by MIGUEL on 2/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//

import UIKit


    
class ViewTamano: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var Tamanos = ["Pequeña", "Mediana", "Grande"];
    var resultado: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PickerTamano.dataSource = self;
        self.PickerTamano.delegate = self;
         Siguiente.enabled = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as!ViewMasa
        sigVista.tamano = resultado
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Tamanos.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Tamanos[row]
    }
    
    
    
    @IBOutlet weak var PickerTamano: UIPickerView!
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0) { resultado = "Pequeña" }
        else if(row == 1) { resultado = "Mediana" }
        else if(row == 2) { resultado = "Grande" }
        Siguiente.enabled = true
    }
    
    @IBOutlet weak var Siguiente: UIButton!
    
    
    func mensaje (Texto: String) {
        let alertController = UIAlertController(title: "El tamaño elegido es", message:
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
