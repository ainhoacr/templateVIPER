//
//  FontsCoordinator.swift
//  PlantillaVIPER
//
//  Created by Ainhoa Calviño on 05/03/2018.
//  Copyright © 2018 Ainhoa Calviño. All rights reserved.
//

import UIKit

class FontsCoordinator: NSObject {
    class func fontBold(ofSize:CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: ofSize)
    }
    
    class func fontRegular(ofSize:CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: ofSize)
    }
}
