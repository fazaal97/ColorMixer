//
//  ViewController.swift
//  ColorMixer
//
//  Created by Mohamed Shazni on 2021-02-14.
//

import UIKit

class ColorMixerViewController: UIViewController {
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var viewColor: UIImageView!
 
    var color:Color?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelRed.text = "0"
        labelGreen.text = "0"
        labelBlue.text = "0"
        color = Color(red: 0.0, green: 0.0, blue: 0.0)
        viewColor.backgroundColor = color?.getColor()

        
    }

    @IBAction func redChanged(_ sender: UISlider) {
        labelRed.text = String(format: "%.0f", sliderRed.value)
        color?.redValue = sender.value
        viewColor.backgroundColor = color?.getColor()
    }
    @IBAction func greenChanged(_ sender: UISlider) {
        labelGreen.text = String(format: "%.0f", sliderGreen.value)
        color?.greenValue = sender.value
        viewColor.backgroundColor = color?.getColor()
    }
    @IBAction func blueChanged(_ sender: UISlider) {
        labelBlue.text = String(format: "%.0f", sliderBlue.value)
        color?.blueValue = sender.value
        viewColor.backgroundColor = color?.getColor()

    }
    
    
    

}

