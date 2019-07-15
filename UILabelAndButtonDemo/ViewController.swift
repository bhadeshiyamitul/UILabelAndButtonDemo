//
//  ViewController.swift
//  UILabelAndButtonDemo
//
//  Created by Mits on 13/06/19.
//  Copyright © 2019 Ubrain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let labelTitle = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 45))
        labelTitle.text = "Hello Man"   //labelTitle.attributedText = NSAttributedString(string: "TEST")
        labelTitle.textColor = UIColor.green
        labelTitle.textAlignment = .center  //.right  //.left //.center
        labelTitle.font = UIFont.systemFont(ofSize: 16)
        labelTitle.highlightedTextColor = UIColor.red
        labelTitle.numberOfLines = 0
        labelTitle.isUserInteractionEnabled = false
        labelTitle.alpha = 1
        labelTitle.backgroundColor = UIColor.lightGray
        
        labelTitle.clipsToBounds = true
        
        labelTitle.bounds  =  CGRect(x: 100, y: 100, width: 200, height: 45)  // bouns and frame are both same setting frame
        labelTitle.frame = CGRect(x: 100, y: 100, width: 200, height: 45)
        //labelTitle.center = self.view.center  // set frame center point to CGPOINT
        labelTitle.isHidden  = false
        
        // LAYER PROPERTY
        labelTitle.layer.cornerRadius = labelTitle.frame.size.height / 2
        labelTitle.layer.borderColor = UIColor.purple.cgColor
        labelTitle.layer.borderWidth = 1
        
        self.view.addSubview(labelTitle)
        
        
        
        let btnTitle = UIButton(frame: CGRect(x: 100, y: 200 , width: 200, height: 45))
        btnTitle.setTitle("Click Me", for: .normal)  //btnTitle.setTitle("Click Me", for: .selected)
        btnTitle.isSelected = false // true
        btnTitle.setImage(UIImage(named: "imgIcon"), for: .normal)  //btnTitle.setImage(UIImage(named: "imgSelectedIcon"), for: .selected)
        btnTitle.setTitleColor(UIColor.blue, for: .normal)
        
        btnTitle.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)  // edge inset for title and image
        btnTitle.titleEdgeInsets =  UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) // edge inset for title only
        btnTitle.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)  // edge inset for image only
        
        //btnTitle.setBackgroundImage(UIImage(named: "backgroundimagebutton"), for: .normal)
        
        btnTitle.tintColor = UIColor.red
        btnTitle.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        btnTitle.alpha = 1
        btnTitle.bounds = CGRect(x: 100, y: 200, width: 200, height: 45)
        //btnTitle.center = self.view.center
        
        btnTitle.backgroundColor = UIColor.green
        
        // LAYER PROPERTY
        btnTitle.layer.cornerRadius = btnTitle.frame.size.height / 2
        btnTitle.layer.borderColor = UIColor.purple.cgColor
        btnTitle.layer.borderWidth = 1
        
        self.view.addSubview(btnTitle)

        
    }
    
    @objc func onClickButton()
    {
        print("BUTTON CLICK")
    }


}

