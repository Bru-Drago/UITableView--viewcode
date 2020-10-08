//
//  DetailScreen.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 08/10/20.
//

import UIKit

class DetailScreen: UIViewController {
    
    var avatarImg = AvatarImageView(frame: .zero)
    var nameLbl = UILabel()
    var lastNameLbl = UILabel()
    var emailLbl = UILabel()
    
    var lista: Data?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        configureAvatarImg()
        configureNameLbl()
        configureLastNameLbl()
        configureEmailLbl()
        
    }
    
    @objc func dismissVC(){
        dismiss(animated: true)
    }
    
    func configureAvatarImg(){
        view.addSubview(avatarImg)
        avatarImg.translatesAutoresizingMaskIntoConstraints = false
        //avatarImg.image = UIImage(named: "avatar1")!
        avatarImg.downloadImage(from: (lista?.avatar)!)
        
        NSLayoutConstraint.activate([
            avatarImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            avatarImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarImg.heightAnchor.constraint(equalToConstant: 200),
            avatarImg.widthAnchor.constraint(equalToConstant: 200)
            
        ])
    }
    
    func configureNameLbl(){
        view.addSubview(nameLbl)
        nameLbl.translatesAutoresizingMaskIntoConstraints = false
        nameLbl.text = lista?.firstName
        
        nameLbl.textColor = .label
        nameLbl.textAlignment = .center
        nameLbl.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        
        NSLayoutConstraint.activate([
            nameLbl.topAnchor.constraint(equalTo: avatarImg.bottomAnchor, constant: 48),
            nameLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            nameLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            nameLbl.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    func configureLastNameLbl(){
        view.addSubview(lastNameLbl)
        lastNameLbl.translatesAutoresizingMaskIntoConstraints = false
        lastNameLbl.text = lista?.lastName
        
        lastNameLbl.textColor = .label
        lastNameLbl.textAlignment = .center
        lastNameLbl.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        
        NSLayoutConstraint.activate([
            lastNameLbl.topAnchor.constraint(equalTo: nameLbl.bottomAnchor, constant: 20),
            lastNameLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            lastNameLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            lastNameLbl.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    func configureEmailLbl(){
        view.addSubview(emailLbl)
        emailLbl.translatesAutoresizingMaskIntoConstraints = false
        emailLbl.text = lista?.email
        
        emailLbl.textColor = .secondaryLabel
        emailLbl.textAlignment = .left
        //emailLbl.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        emailLbl.font = UIFont.preferredFont(forTextStyle: .body)
        emailLbl.adjustsFontSizeToFitWidth = true
        emailLbl.minimumScaleFactor = 0.75
        emailLbl.lineBreakMode = .byTruncatingTail
        
        NSLayoutConstraint.activate([
            emailLbl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            emailLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            emailLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            emailLbl.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }


}
