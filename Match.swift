//
//  Match.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 10/30/24.
//

import Foundation

class Match: Encodable, Decodable{
    
    var won: Bool
    var opponent: Opponent
    
    init(won: Bool, opponent: Opponent) {
        self.won = won
        self.opponent = opponent
    }
}
