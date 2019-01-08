//
//  SearchTableViewCell.swift
//  shinnyfutures
//
//  Created by chenli on 2018/4/2.
//  Copyright © 2018年 xinyi. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var instrumentName: UILabel!
    @IBOutlet weak var instrumentId: UILabel!
    @IBOutlet weak var exchangeName: UILabel!
    @IBOutlet weak var save: UIButton!
    let manager = DataManager.getInstance()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    @IBAction func save(_ sender: UIButton) {
        if let ins = instrumentId.text {
            manager.saveOrRemoveIns(ins: ins)
            let optional = FileUtils.getOptional()
            if !optional.contains(ins) {
                save.setImage(UIImage(named: "heart_outline", in: Bundle(identifier: "com.shinnytech.futures"), compatibleWith: nil), for: .normal)
            }else{
                save.setImage(UIImage(named: "heart", in: Bundle(identifier: "com.shinnytech.futures"), compatibleWith: nil), for: .normal)
            }

        }
    }

}
