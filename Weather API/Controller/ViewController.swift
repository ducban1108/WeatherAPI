//
//  ViewController.swift
//  Weather API
//
//  Created by Just Kidding on 4/18/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var data: Model?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DataService.shared.getData(completedHandler: { (models) in
            self.data = models
            self.tableView.reloadData()
        })
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
//        print(data?.name)
//        print(data?.icon)
        cell.name.text = data?.name
        cell.country.text = data?.country
        cell.temperature.text = data?.temp_c ?? "Không có"
        cell.daymonthYear.text = data?.localtime
        cell.statusWeather.text = data?.text
//        cell.weatherImage.image = data?.icon
        return cell
    }



}

