//
//  ListaData.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 07/10/20.
//

import Foundation

struct ListaData : Codable {
    
    var data : [Data]
}

struct Data : Codable {
    
    var email : String
    var firstName : String
    var lastName : String
    var avatar : String
}
