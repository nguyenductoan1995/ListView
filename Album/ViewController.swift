//
//  ViewController.swift
//  Album
//
//  Created by NguyenDucToan on 4/4/18.
//  Copyright © 2018 NguyenDucToan. All rights reserved.
//

import UIKit

var array:[Phone]!
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let screnShow = sb.instantiateViewController(withIdentifier: "SHOW") as! ShowViewController
        screnShow.img = array[indexPath.row].IMG
        self.navigationController?.pushViewController(screnShow, animated: true)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! DongTableViewCell
        cell.txtName.text = array[indexPath.row].Name
        cell.imgHinh.image = UIImage(named: array[indexPath.row].IMG)
        cell.imgHinh.layer.cornerRadius = cell.imgHinh.layer.frame.height/2
        cell.myView.layer.cornerRadius = cell.myView.layer.frame.height/2
        return cell
        
    }
    

    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
     //   array = ["iphone6","iphone6splus","iphone7","iphone8","iphoneX","oppoa83","oppof1s","oppof3plus","oppof5"]
        array = [
            Phone(img: "iphone6", name: "Iphone 6"),
            Phone(img: "iphone6splus", name: "Iphone 6SPlus"),
            Phone(img: "iphone7", name: "Iphone 7"),
            Phone(img: "iphone8", name: "Iphone 8"),
            Phone(img: "iphoneX", name: "Iphone X"),
            Phone(img: "oppoa83", name: "Oppoa83")
        ]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

