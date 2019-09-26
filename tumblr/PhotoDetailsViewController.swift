//
//  PhotoDetailsViewController.swift
//  tumblr
//
//  Created by Maria Hernandez on 9/25/19.
//  Copyright © 2019 Maria Hernandez. All rights reserved.
//

import UIKit
import AlamofireImage


class PhotoDetailsViewController: UIViewController {

    
    @IBOutlet weak var mainView: UIImageView!
    
    var post: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photos = post["photos"] as? [[String: Any]] {
            // photos is NOT nil, we can use it!
            // TODO: Get the photo url
            // 1.
            let photo = photos[0]
            // 2.
            let originalSize = photo["original_size"] as! [String: Any]
            // 3.
            let urlString = originalSize["url"] as! String
            // 4.
            let url = URL(string: urlString)
            
            mainView.af_setImage(withURL: url!)
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
