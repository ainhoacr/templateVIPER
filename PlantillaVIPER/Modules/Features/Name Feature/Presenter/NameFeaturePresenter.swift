//
//  NameFeaturePresenter.swift
//  PlantillaVIPER
//
//  Created by Ainhoa Calviño on 01/03/2018.
//  Copyright © 2018 Ainhoa Calviño. All rights reserved.
//

import UIKit

/**
    This class received events from the view and generate action of this event
 */

class NameFeaturePresenter: NSObject, NameFeaturePresenterProtocol {
    
    var view: NameFeatureViewControllerProtocol?
    var interactor: NameFeatureInteractorProtocol?
    var router: NameFeatureRouterProtocol?
}

extension NameFeaturePresenter: NameFeatureInteractorOutputProtocol {
    
}
