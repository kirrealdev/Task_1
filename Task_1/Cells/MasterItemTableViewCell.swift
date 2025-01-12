//
//  MasterTableViewItemCell.swift
//  Task_1
//
//  Created by KirRealDev on 15.06.2021.
//

import UIKit

class MasterItemTableViewCell: UITableViewCell {

    @IBOutlet private weak var itemImageView: UIImageView!
    @IBOutlet private weak var itemTitleLabel: UILabel!
    @IBOutlet private weak var itemPriceLabel: UILabel!
    
    private let cellModel = ItemCellModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        itemImageView.layer.cornerRadius = itemImageView.frame.width / 6
    }
    
    func configure(_ item: ItemModel) {
        cellModel.configure(item)
        itemImageView.image = UIImage(named: cellModel.imageName)
        itemTitleLabel.text = cellModel.title
        if (cellModel.price != "is empty") {
            itemPriceLabel.text = cellModel.price
        }
        else {
            itemPriceLabel.isHidden = true
        }
    }
    
}
