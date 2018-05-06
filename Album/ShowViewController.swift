//
//  ShowViewController.swift
//  Album
//
//  Created by NguyenDucToan on 4/15/18.
//  Copyright © 2018 NguyenDucToan. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {
    var img:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgShows.image = UIImage(named: img)
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imgShows: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
