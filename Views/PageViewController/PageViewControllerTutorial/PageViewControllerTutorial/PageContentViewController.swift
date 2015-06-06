//
//  PageContentViewController.swift
//  PageViewControllerTutorial
//
//  Created by Domenico on 06/06/15.
//  Copyright (c) 2015 Domenico. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {

    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var bkImageView: UIImageView!

    var pageIndex: Int?
    var titleText : String!
    var imageName : String!
}
