//
//  ViewController.swift
//  GlobalTalk
//
//  Created by Mihozil on 10/18/20.
//  Copyright © 2020 Mihozil. All rights reserved.
//

import UIKit


class ContactTableViewCell : UITableViewCell {
    static let contactCellIdentifier = "ContactTatbleViewCellIdentifier"
}


class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = self as? UITableViewDataSource
    }
    
    


}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
}

