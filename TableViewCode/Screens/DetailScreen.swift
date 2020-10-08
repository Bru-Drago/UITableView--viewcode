//
//  DetailScreen.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 08/10/20.
//

import UIKit

class DetailScreen: UIViewController {
    
    var avatarImg = UIImageView()
    var nameLbl = UILabel()
    var lastNameLbl = UILabel()
    var emailLbl = UILabel()
    
    var lista: Data?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
       
        var nome = lista?.firstName
        nameLbl.text = nome
        print(nome)
    }
    
    @objc func dismissVC(){
        dismiss(animated: true)
    }
    
    func configureAvatarImg(){
        view.addSubview(avatarImg)
        avatarImg.translatesAutoresizingMaskIntoConstraints = false
        
    }


}
