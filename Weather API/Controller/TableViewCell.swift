//
//  TableViewCell.swift
//  Weather API
//
//  Created by Just Kidding on 4/23/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var daymonthYear: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var statusWeather: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var country: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
