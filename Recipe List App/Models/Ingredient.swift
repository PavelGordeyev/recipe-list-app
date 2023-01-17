//
//  Ingredient.swift
//  Recipe List App
//
//  Created by Pavel Gordeyev on 1/16/23.
//

import Foundation

class Ingredient: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
    
}
