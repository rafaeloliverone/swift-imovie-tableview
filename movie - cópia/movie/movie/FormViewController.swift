//
//  FormViewController.swift
//  movie
//
//  Created by IFPB on 26/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    
    @IBOutlet weak var sliderNota: UISlider!
    @IBOutlet weak var lbNota: UILabel!
    @IBOutlet weak var swAssistiu: UIStepper!
    @IBOutlet weak var lbStepperAssistir: UILabel!
    
    @IBAction func sliderAction(_ sender: Any) {
        self.lbNota.text = String(Int(sliderNota.value * 10))    }
    
    @IBOutlet weak var switchOscar: UISwitch!
    
    var cadastro: Cadastro!
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.lbStepperAssistir.text = String(0)
        self.lbNota.text = String(Int(sliderNota.value * 10)) 
    }
    
    
    @IBAction func swAssistiu(_ sender: Any) {
        self.lbStepperAssistir.text = String(Int(swAssistiu.value))
        
    }
    
    
    @IBAction func salvar(_ sender: Any) {
        let nome = self.tfNome.text!
        let notaFilme = Int(self.lbNota.text!)
        let oscar = self.switchOscar.isOn
        let vezesAssistiu = Int(self.lbStepperAssistir.text!)
        let filme = Filme(nome: nome, nota: notaFilme!, oscar: oscar, vezesAssistiu: vezesAssistiu!)
        
        self.cadastro = (UIApplication.shared.delegate as! AppDelegate).cadastro
        
        self.cadastro.add(filme: filme)
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
