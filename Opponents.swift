//
//  Opponents.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 10/30/24.
//

import Foundation

class Opponent: Encodable, Decodable{
    
    var name: String
    var stratigy: String
    var counterStratigy : String
    
    init(name: String, stratigy: String, counterStratigy: String) {
        self.name = name
        self.stratigy = stratigy
        self.counterStratigy = counterStratigy
    }
    
    
}
