//
//  Cadastro.swift
//  movie
//
//  Created by IFPB on 26/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class Cadastro {
    private var filmes: Array<Filme>
    
    init() {
        self.filmes = Array<Filme>()
    }
    
    func add(filme: Filme) {
        self.filmes.append(filme)
    }
    
    func count() -> Int {
        return self.filmes.count
    }
    
    func get(index: Int) -> Filme {
        return self.filmes[index]
    }
    
    func get() -> Array<Filme> {
        return self.filmes
    }
    
    func del(index: Int) {
        self.filmes.remove(at: index)
    }
    
    func insert(filme: Filme, index: Int) {
        self.filmes.insert(filme, at: index)
    }
}
