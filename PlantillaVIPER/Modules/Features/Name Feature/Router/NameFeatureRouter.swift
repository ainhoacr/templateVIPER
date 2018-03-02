//
//  NameFeatureRouter.swift
//  PlantillaVIPER
//
//  Created by Ainhoa Calviño on 01/03/2018.
//  Copyright © 2018 Ainhoa Calviño. All rights reserved.
//

import UIKit

/**
    This class contains logic related to the navigation of the screen
 */

class NameFeatureRouter: NSObject, NameFeatureRouterProtocol {
    
    //build objects
    var viewController = NameFeatureViewController()
    let presenter = NameFeaturePresenter()
    let interactor = NameFeatureInteractor()
    let dataManagerService = DataManagerService()
    var navigationController: UINavigationController?
    
    /**
     Initialize dependencies
     */
    override init() {
        super.init()
        
        self.viewController.presenter = self.presenter
        self.presenter.view = self.viewController
        self.presenter.interactor = self.interactor
        self.presenter.router = self
        self.interactor.dataManagerService = self.dataManagerService
        self.dataManagerService.interactor = self.presenter
        self.navigationController = UINavigationController(rootViewController: self.viewController)
    }
    
    func presentInterfaceFromWindow(window: UIWindow) {
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
        self.viewController = mainStoryboard.instantiateViewController(withIdentifier: "vcNameFeature") as! NameFeatureViewController
        self.viewController.presenter = self.presenter
        self.presenter.view = self.viewController
        self.presenter.interactor = self.interactor
        self.presenter.router = self
        self.interactor.dataManagerService = self.dataManagerService
        self.dataManagerService.interactor = self.presenter
        self.navigationController = UINavigationController(rootViewController: self.viewController)
        
        window.rootViewController = self.viewController
    }
}
