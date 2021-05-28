//
//  Filme.swift
//  movie
//
//  Created by IFPB on 26/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class Filme: NSObject {
    var nome: String
    var nota: Int
    var oscar: Bool
    var vezesAssistiu: Int
    
    init(nome: String, nota: Int, oscar: Bool, vezesAssistiu: Int) {
        self.nome = nome
        self.nota = nota
        self.oscar = oscar
        self.vezesAssistiu = vezesAssistiu
    }
}
