//
//  ViewController.swift
//  slider
//
//  Created by Javier Rodríguez Valentín on 23/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumTrackTintColor = .blue
        slider.maximumTrackTintColor = .cyan
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 0
        
        //si se quiere que el slider solo recoja datos cuando se deje de clicar debemos poner en el: sont event -> touch up inside
        
        //para rotar la barra
        slider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2)) //otra opción es cambiando el key path con layer.transform.rotation.z como number poniendo coma o como string poniendo punto. La medida es en radianes
        
        //inicializo imagen 1 y 2
        img1.alpha = 0
        img2.alpha = 1
        
        
    }

    @IBAction func sliderAction(_ sender: Any) {
        
        let step: Float = 1
            let currentValue = round(slider.value / step) * step
    
        print("Valor: \(Int(currentValue))")
        img1.alpha = CGFloat(slider.value/100)
        img2.alpha = CGFloat(1 - img1.alpha)
        
    }
    
}

