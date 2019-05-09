//
//  ViewController.swift
//  testview 02
//
//  Created by dit08 on 2019. 5. 2..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["Cat", "Dog", "Cow", "Pig", "Horse", "Whale", "Bird"]
    var year = ["3", "5", "10", "2", "6", "3", "2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // delegate 객체와 ViewController의 연결
        myTableView.dataSource = self
    }


    //
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    //section 몇번 사용 할것인가?
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //헤드 네임
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
        return "Section Header 1"
        } else {
            return "Section Header 2"
        }
    }
    
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0{
            return "Section Footer 1"
        } else {
            return "Section Footer 2"
        }
    }
    
    //cell을 생성
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell 생성, 재활용 풀 사용
        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        print("section = \(indexPath.section) row : \(indexPath.row)")
        
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = year[row]
        
        //image 넣기
        cell.imageView?.image = UIImage(named: animals[row])
        
        return cell
    }
    
}

