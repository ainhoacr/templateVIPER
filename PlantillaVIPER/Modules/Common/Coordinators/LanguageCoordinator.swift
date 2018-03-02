//
//  LanguageCoordinator.swift
//  PlantillaVIPER
//
//  Created by Ainhoa Calviño on 28/02/2018.
//  Copyright © 2018 Ainhoa Calviño. All rights reserved.
//

import UIKit

/**
    Manage language of application
 */

class LanguageCoordinator: NSObject {

    /**
     Manage localized strings
     
     - Parameter string: key of string
     - Returns: value of string localized
     */
    static func localized(string: String) -> String {
        return NSLocalizedString(string, comment: "")
    }
}
