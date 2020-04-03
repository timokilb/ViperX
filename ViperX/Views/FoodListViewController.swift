//
//  FoodListViewController.swift
//  ViperX
//
//  Created by Neo on 24.03.20.
//  Copyright © 2020 Neo. All rights reserved.
//

import UIKit

class FoodListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    let addButton = UIButton()
    let textField = UITextField()
    let table = UITableView()
    let tableCell = UITableViewCell()
    let lable = UILabel()
    var data: [Food] = [Food(name: "Jackson", calories: 50), Food(name: "Knorrr", calories: 50)]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue//UIColor(red: 45, green: 185, blue: 185, alpha: 0.5)
        title = "App Nutte"
        setupLable()
        setupAddButton()
        setupTable()
        setupTextField()
    }
    
    
    // table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // Ask for a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell") as! FoodCell
        let food = data[indexPath.row]
        cell.set(food: food)
        return cell
    }
    
    func setTableViewDelegates() {
        table.delegate = self
        table.dataSource = self
    }
    
    func setupTable() {
        view.addSubview(table)
        setTableViewDelegates()
        table.backgroundColor = .white
        table.rowHeight = 50
        table.clipsToBounds = true
        table.layer.cornerRadius = 8
        table.register(FoodCell.self, forCellReuseIdentifier: "FoodCell")
        setTableConstraints()
    }
    
    func setTableConstraints() {
        table.translatesAutoresizingMaskIntoConstraints = false
        table.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        table.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        table.topAnchor.constraint(equalTo: view.topAnchor, constant: 190).isActive = true
        table.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
    }
    
    
    
    // lable
    func setupLable() {
        lable.backgroundColor = .white
        lable.text = "My Groceries"
        lable.textColor = .systemBlue
        lable.textAlignment = .center
        lable.layer.cornerRadius = 8
        lable.clipsToBounds = true
        view.addSubview(lable)
        setLableConstraints()
    }
    
    func setLableConstraints() {
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        lable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        lable.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        lable.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
    
    // text field
    func setupTextField() {
        textField.backgroundColor = .white
        textField.text = "Enter a grocery"
        textField.textColor = .gray
        textField.textAlignment = .left
        textField.layer.cornerRadius = 8
        textField.clipsToBounds = true
        view.addSubview(textField)
        setTextFieldConstraints()
    }
    
    func setTextFieldConstraints() {
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90).isActive = true
        textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        textField.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 170).isActive = true
    }
    
    
    // add button
    func setupAddButton() {
        addButton.backgroundColor = .white
        addButton.setTitleColor(.systemBlue, for: .normal)
        addButton.setTitle("+", for: .normal)
        addButton.layer.cornerRadius = 25
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        view.addSubview(addButton)
        setAddButtonConstraints()
    }
    
    func setAddButtonConstraints() {
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        addButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        addButton.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 170).isActive = true
    }
    
    @objc func addButtonTapped(){
        let food = Food(name: textField.text ?? "Jackson", calories: 50)
        data.append(food)
        table.reloadData()
        textField.endEditing(true)
        NetworkingService.execute()
    }
}

