//
//  ViewController.swift
//  pagethescroll2
//
//  Created by amir masoud mohtaji on 6/25/17.
//  Copyright © 2017 amir masoud mohtaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollview: UIScrollView!
    var newx : CGFloat = 0.0
    var contentwidth : CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        var images = [UIImageView]()
        for x in 0 ... 2{
            let image : UIImage = UIImage(named: "icon\(x).png")!
            let imageview : UIImageView = UIImageView(image: image)
            images.append(imageview)
            scrollview.addSubview(imageview)
            newx = view.frame.size.width/2 + view.frame.size.width * CGFloat(x)
            imageview.frame = CGRect(x: newx - 75 , y: view.frame.size.height/2 - 75 , width: 150, height: 150)
            contentwidth += newx
        }
        scrollview.contentSize = CGSize(width: contentwidth, height: view.frame.size.height)
        
        
        
    }

    
    

}

