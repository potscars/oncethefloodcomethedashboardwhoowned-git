//
//  MMImageTransTVCell.swift A.K.A. BANNER IMAGE
//  dashboardv2
//
//  Created by Mohd Zulhilmi Mohd Zain on 27/12/2016.
//  Copyright © 2016 Ingeniworks Sdn Bhd. All rights reserved.
//

import UIKit

class MMImageTransTVCell: UITableViewCell {

    @IBOutlet weak var uiivMMITTVCImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell()
    {
        //self.imageView?.image = DBImages.DB_BANNER_IMAGE
        //self.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        self.backgroundColor = DBColorSet.dashboardKBTertiaryColor
        //self.backgroundColor = UIColor.init(red: 0.25, green: 0.39, blue: 0.91, alpha: 1.0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
