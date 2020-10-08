//
//  NetworkingManager.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 07/10/20.
//

import UIKit

class NetworkingManager {
    
    static let shared = NetworkingManager()
    private init (){}
    
    private var baseURL = "https://reqres.in/api/users?page=2"
    let cache = NSCache<NSString,UIImage>()
    
    func getLista(completion: @escaping (ListaData?,String?)->()){
        
        guard let url = URL(string: baseURL)else {
            completion(nil,"Erro na url")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let _ = error {
                completion(nil,"Um erro foi encontrado")
                return
            }
            guard let response = response as? HTTPURLResponse , response.statusCode == 200 else {
                completion(nil,"Erro na resposta do servidor")
                return
            }
            guard let data = data else {
                completion(nil,"Erro nos dados do servidor")
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let lista = try decoder.decode(ListaData.self, from: data)
                completion(lista,nil)
            }catch{
                completion(nil,"Erro no JSON")
            }
        }
        task.resume()
        
    }

}
