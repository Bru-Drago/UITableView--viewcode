//
//  SecondScreen.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 07/10/20.
//

import UIKit

class SecondScreen: UIViewController {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        //1 - Set delegates
        setTableViewDelegates()
        //2 - Set the hight
        tableView.rowHeight = 100
        //4 - Set constraints
        tableView.pin(to: view)
        
    }
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension SecondScreen:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
