//
//  PersonCell.swift
//  TableViewCode
//
//  Created by Bruna Fernanda Drago on 07/10/20.
//

import UIKit

class PersonCell: UITableViewCell {
    
    var avatarImg = UIImageView()
    var nameTitleLbl = UILabel()
    

//Em programmatic tableView cell, esse init é obrigatorio
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(avatarImg)
        addSubview(nameTitleLbl)
        
        configureImageView()
        configureLabel()
        setImgConstraints()
        setLblConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView(){
        avatarImg.layer.cornerRadius = 10
        avatarImg.clipsToBounds = true
        
    }
    func configureLabel(){
        nameTitleLbl.numberOfLines = 0
        nameTitleLbl.adjustsFontSizeToFitWidth = true
        
    }
    func setImgConstraints(){
        avatarImg.translatesAutoresizingMaskIntoConstraints = false
        avatarImg.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        avatarImg.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        avatarImg.heightAnchor.constraint(equalToConstant: 80).isActive = true
        avatarImg.widthAnchor.constraint(equalTo: avatarImg.heightAnchor, multiplier: 16/9).isActive = true
        
    }
    func setLblConstraints(){
        nameTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        nameTitleLbl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameTitleLbl.leadingAnchor.constraint(equalTo: avatarImg.trailingAnchor, constant: 20).isActive = true
        nameTitleLbl.heightAnchor.constraint(equalToConstant: 80).isActive = true
        nameTitleLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
    }
    
    
}
