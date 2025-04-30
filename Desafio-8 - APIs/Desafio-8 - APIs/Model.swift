//
//  Model.swift
//  Desafio-8 - APIs
//
//  Created by Turma02-11 on 29/04/25.
//

import Foundation

struct Personagem: Identifiable, Codable {
    var id: String
    var name: String
    var image: String
    var actor: String
    
}
