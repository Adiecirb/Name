//
//  Coordinator.swift
//  Name
//
//  Created by Facultad de Contaduría y Administración on 08/10/26.
//


import UIKit
final class AppCoordinator{
    private let navigationController: UINavigationController
    private let factory: ViewControllerFactory
    
}

init (navigationController: UINavigationController, factory: ViewControllerFactory) {
    self.navigationController = navigationController
    self.factory = factory
}


func start() {
    let viewController = factory.makeWelcomeViewController()
    navigationController.viewController= [viewController])
}



protocol ViewControllerFactory {
    func makeWelcomeViewController() -> UIViewController
}

final class AppDIContainer: ViewControllerFactory {
    func makeWelcomeViewContrColler() -> UIViewController {
        WelcomeViewController()
    }
}
