//
//  ViewController.swift
//  SlotMachine
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var imageArray = [String]()
    var dataArray1 = [Int]()
    var dataArray2 = [Int]()
    var dataArray3 = [Int]()
    var dataArray4 = [Int]()
    var dataArray5 = [Int]()
    var dataArray6 = [Int]()
    var dataArray7 = [Int]()
    var dataArray8 = [Int]()
    var dataArray9 = [Int]()
    var dataArray10 = [Int]()
    var dataArray11 = [Int]()
    var dataArray12 = [Int]()
    var dataArray13 = [Int]()
    var dataArray14 = [Int]()
    var dataArray15 = [Int]()
    var dataArray16 = [Int]()
    var dataArray17 = [Int]()
    var dataArray18 = [Int]()
    var dataArray19 = [Int]()
    var dataArray20 = [Int]()
    var dataArray21 = [Int]()
    var dataArray22 = [Int]()
    var dataArray23 = [Int]()
    var dataArray24 = [Int]()
    var dataArray25 = [Int]()
    var dataArray26 = [Int]()
        
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","+"]
        
        for(var i = 0; i < 100; i++) {
            dataArray1.append((Int)(arc4random() % 27))
            dataArray2.append((Int)(arc4random() % 27))
            dataArray3.append((Int)(arc4random() % 27))
            dataArray4.append((Int)(arc4random() % 27))
            dataArray5.append((Int)(arc4random() % 27))
            dataArray6.append((Int)(arc4random() % 27))
            
        }
        
        resultLabel.text = ""
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(sender: AnyObject) {
    
        pickerView.selectRow(Int(arc4random())%94 + 6, inComponent: 0, animated: true)
        pickerView.selectRow(Int(arc4random())%94 + 6, inComponent: 1, animated: true)
        pickerView.selectRow(Int(arc4random())%94 + 6, inComponent: 2, animated: true)
        pickerView.selectRow(Int(arc4random())%94 + 6, inComponent: 3, animated: true)
        pickerView.selectRow(Int(arc4random())%94 + 6, inComponent: 4, animated: true)
        pickerView.selectRow(Int(arc4random())%94 + 6, inComponent: 5, animated: true)

        

        if(dataArray1[pickerView.selectedRowInComponent(0)] == dataArray2[pickerView.selectedRowInComponent(1)] &&
            dataArray2[pickerView.selectedRowInComponent(1)] == dataArray3[pickerView.selectedRowInComponent(2)]) {

            resultLabel.text = "Bingo!!";
        } else {
            resultLabel.text = ""
        }
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 100
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 6
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100.0
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat{
        return 100.0
    }

    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let pickerLabel = UILabel()
        
        if component == 0 {
            pickerLabel.text = imageArray[(Int)(dataArray1[row])]
        } else if component == 1 {
            pickerLabel.text = imageArray[(Int)(dataArray2[row])]
        } else {
            pickerLabel.text = imageArray[(Int)(dataArray3[row])]
        }
        
        pickerLabel.font = UIFont(name: "Arial-BoldMT", size: 40)
        pickerLabel.textAlignment = NSTextAlignment.Center

        return pickerLabel
    }

}

