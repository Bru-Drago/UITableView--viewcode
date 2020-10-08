//
//  PersonCell.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 07/10/20
//

import UIKit

class PersonCell: UITableViewCell {
    
    static let reuseID = "PersonCell"
  
    var avatarImageView = AvatarImageView(frame: .zero)
    var nameTitleLbl = UILabel()
    

//Em programmatic tableView cell, esse init é obrigatorio
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(avatarImageView)
        addSubview(nameTitleLbl)
        
        
        configureLabel()
        setImageViewConstraints()
        setLblConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(lista:Data){
        nameTitleLbl.text = lista.firstName
        avatarImageView.downloadImage(from: lista.avatar)
        
    }
    
    func configureLabel(){
        nameTitleLbl.numberOfLines = 0
        nameTitleLbl.adjustsFontSizeToFitWidth = true
    }
    
    func setImageViewConstraints(){
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        avatarImageView.widthAnchor.constraint(equalTo: avatarImageView.heightAnchor, multiplier: 16/9).isActive = true
        
    }

    func setLblConstraints(){
        nameTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        nameTitleLbl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameTitleLbl.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20).isActive = true
        nameTitleLbl.heightAnchor.constraint(equalToConstant: 80).isActive = true
        nameTitleLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
    }
}
