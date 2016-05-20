//
//  BookTableViewCell.swift
//  TableViewSample
//
//  Created by MF839-018 on 2016. 5. 20..
//  Copyright © 2016년 SAMSUNG SDS. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var writer: UILabel!
    @IBOutlet weak var publisher: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        title.text = ""
        writer.text = ""
        publisher.text = ""
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
