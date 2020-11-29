//
//  ViewController.swift
//  DatePicker
//
//  Created by Pedro Rosete on 10/10/20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var Hour: UITextField!
    @IBOutlet weak var Minutes: UITextField!
    @IBOutlet weak var AM_PM: UITextField!
 
    @IBOutlet weak var Hour2: UITextField!
    @IBOutlet weak var Minutes2: UITextField!
    @IBOutlet weak var AM_PM2: UITextField!
    
    
    var pickerView1 = UIPickerView()
    var pickerView2 = UIPickerView()
    var pickerView3 = UIPickerView()
    
    var picker1Options = ["01","02","03","04","05","06","07","08","09",
                          "10","11","12"]
    var picker2Options = ["00","01","02","03","04","05","06","07","08","09",
                          "10","11","12","13","14","15","16","17","18","19",
                          "20","21","22","23","24","25","26","27","28","29",
                          "30","31","32","33","34","35","36","37","38","39",
                          "40","41","42","43","44","45","46","47","48","49",
                          "50","51","52","53","54","55","56","57","58","59"]
    var picker3Options = ["AM","PM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView1.delegate = self
        pickerView1.dataSource = self
        
        pickerView2.delegate = self
        pickerView2.delegate = self
        
        pickerView3.delegate = self
        pickerView3.delegate = self
        
        Hour.inputView = pickerView1
        Hour.textAlignment = .center
        Hour.placeholder = "HH"
        
        Minutes.inputView = pickerView2
        Minutes.textAlignment = .center
        Minutes.placeholder = "MM"
        
        AM_PM.inputView = pickerView3
        AM_PM.textAlignment = .center
        AM_PM.placeholder = "AM/PM"
        
        Hour2.inputView = pickerView1
        Hour2.textAlignment = .center
        Hour2.placeholder = "HH"
        
        Minutes2.inputView = pickerView2
        Minutes2.textAlignment = .center
        Minutes2.placeholder = "MM"
        
        AM_PM2.inputView = pickerView3
        AM_PM2.textAlignment = .center
        AM_PM2.placeholder = "AM/PM"
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == pickerView1{
            return picker1Options.count
        }else if pickerView == pickerView3{
            return picker3Options.count
        }
        else{
            return picker2Options.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickerView1 {
            return picker1Options[row]
        }else if pickerView == pickerView3{
            return picker3Options[row]
        }
        else {
            return picker2Options[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1{
            Hour.text = picker1Options[row]
            Hour.resignFirstResponder()
            Hour2.text = picker1Options[row]
            Hour2.resignFirstResponder()
        }else if pickerView == pickerView3{
            AM_PM.text = picker3Options[row]
            AM_PM.resignFirstResponder()
            AM_PM2.text = picker3Options[row]
            AM_PM2.resignFirstResponder()
        }
        else{
            Minutes.text = picker2Options[row]
            Minutes.resignFirstResponder()
            Minutes2.text = picker2Options[row]
            Minutes2.resignFirstResponder()
        }
    }
    
    //@IBAction func SaveButton(_ sender: Any) {
        //let alertController = UIAlertController(title: "Time Saved!", message: "Nice Job", preferredStyle: .alert)
        //alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        //self.present(alertController, animated: true, completion: nil)
    //}
    
    }
