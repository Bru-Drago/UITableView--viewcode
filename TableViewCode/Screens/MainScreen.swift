//
//  MainScreen.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 07/10/20.
//

import UIKit

class MainScreen: UIViewController {
    
    let nextButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        setUpNextButton()
    }
    func setUpNextButton(){
        //Definindo como o botão será
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("Next", for: .normal)
        
        //Como se fosse um IBAction
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        //Add o botão a View
        view.addSubview(nextButton)
        setNextButtonConstraints()
    }
    
    @objc func nextButtonTapped(){
        let nextScreen = SecondScreen()
        nextScreen.title = "Lista de Contatos"
        navigationController?.pushViewController(nextScreen, animated: true)
        
    }
    
    func setNextButtonConstraints(){
        //use AutoLayout
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    }
    


}
