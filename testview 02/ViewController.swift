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
    var animals = ["Cat", "Dog", "Cow", "Pig", "Horse", "Whale", "bird"]
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
    
    //cell을 생성
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell 생성, 재활용 풀 사용
        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        print("section = \(indexPath.section) row : \(indexPath.row)")
        
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = year[row]
        
        return cell
    }
    
}

