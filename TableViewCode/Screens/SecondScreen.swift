//
//  SecondScreen.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 07/10/20.
//

import UIKit

class SecondScreen: UIViewController {
    
    var tableView = UITableView()
    var lista : [Data] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray
        configureTableView()
        callGetLista()
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        //1 - Set delegates
        setTableViewDelegates()
        //2 - Set the hight
        tableView.rowHeight = 100
        //4 - Set constraints
        tableView.pin(to: view)
        tableView.backgroundColor = .systemBackground
        tableView.register(PersonCell.self, forCellReuseIdentifier: PersonCell.reuseID)
        
    }
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }

    func callGetLista(){
        NetworkingManager.shared.getLista { (lista, erroMsg) in
            guard let lista = lista?.data else {
                print("Erro na call")
                return
            }
            //(lista 1 é a var = lista do guard)fazendo o append do resultado no array
            self.lista = lista
            print(lista)
        }
    }


}
extension SecondScreen:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonCell.reuseID, for: indexPath)as! PersonCell
        let listas = lista[indexPath.row]
        cell.set(lista: listas)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let listas = lista[indexPath.row]
        let detailVC = DetailScreen()
        detailVC.lista = listas
        let navController = UINavigationController(rootViewController: detailVC)
        present(navController, animated: true)
        
    }
    
    
}
