//
//  ViewController.swift
//  UglyStuff
//
//  Created by Yogesh Kumar on 28/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
        UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var goodStuff = ["https://www.thebetterindia.com/wp-content/uploads/2016/02/INDp120d.jpg",
        "https://www.thebetterindia.com/wp-content/uploads/2016/02/newseq.jpg",
        "https://www.thebetterindia.com/wp-content/uploads/2016/01/shubhada1.png",
        "https://www.thebetterindia.com/wp-content/uploads/2016/02/school.jpg",
        "https://www.thebetterindia.com/wp-content/uploads/2016/02/st.jpg"]
    
    var goodTitles = ["Passion into Businesses",
        "Turning Women into Agripreneurs",
        "Odissi Dancer Shubhada Varadkar",
        "A Teacher Solved the Power Cut Issue",
        "India’s First Open Air Public Art District"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            
            var img: UIImage!
            
            let url = NSURL(string: goodStuff[indexPath.row])!
            if let data = NSData(contentsOfURL: url){
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "AppIcon")
            }
            
            cell.configureCell(img, text: goodTitles[indexPath.row])
            
            return cell
        }
        else {
            return UglyCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goodStuff.count
    }


}

