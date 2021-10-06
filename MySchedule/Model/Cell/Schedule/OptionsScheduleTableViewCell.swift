//
//  OptionsScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Rita on 06.10.2021.
//

import UIKit

class OptionsScheduleTableViewCell: UITableViewCell {
    
    let backgroundViewCell: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameCellLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let repeatSwich: UISwitch = {
        let repeatSwitch = UISwitch()
        repeatSwitch.isOn = true
        repeatSwitch.isHidden = true
        repeatSwitch.onTintColor = #colorLiteral(red: 0.8856815696, green: 0.4170343876, blue: 0.4504548907, alpha: 1)
        repeatSwitch.translatesAutoresizingMaskIntoConstraints = false
        return repeatSwitch
      }()
    
    let cellNameArray = [["Date","Time"],
                         ["Name","Type", "Bulding", "Audience"],
                         ["Teacher Name"],
                         [""],
                         ["Repeat every 7 days"]]
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        repeatSwich.addTarget(self, action: #selector(switchChange(paramTarget:)), for: .valueChanged)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConfigure(indexPath: IndexPath) {
        nameCellLabel.text = cellNameArray[indexPath.section][indexPath.row]
        
        if indexPath == [3,0] {
            backgroundViewCell.backgroundColor = #colorLiteral(red: 0.8856815696, green: 0.4170343876, blue: 0.4504548907, alpha: 1)
        }
        
        if indexPath == [4,0] {
            repeatSwich.isHidden = false
        }
    }
    
    @objc func switchChange(paramTarget: UISwitch) {
        if paramTarget.isOn {
            print("ON")
        } else {
            print("Off")
        }
    
    }
    
    func setConstraints() {
        
        self.addSubview(backgroundViewCell)
        NSLayoutConstraint.activate([
            backgroundViewCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            backgroundViewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            backgroundViewCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1)
        ])
        
        self.addSubview(nameCellLabel)
        NSLayoutConstraint.activate([
            nameCellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            nameCellLabel.leadingAnchor.constraint(equalTo: backgroundViewCell.leadingAnchor, constant: 15),
        ])
        
        self.contentView.addSubview(repeatSwich)
        NSLayoutConstraint.activate([
            repeatSwich.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            repeatSwich.trailingAnchor.constraint(equalTo: backgroundViewCell.trailingAnchor, constant: -20),
        ])
        
        
        
    }
}

