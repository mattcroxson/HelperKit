//
//  ViewControllerFactoryProtocol.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import UIKit

public protocol ViewControllerFactoryProtocol {
    func makeViewController<T: UIViewController>(with viewModel: ViewModelling?,
                                                 flowCoordinator: FlowCoordinator) -> T?
    func makeErrorViewController(with error: Error?,
                                 title: String?,
                                 flowCoordinator: FlowCoordinator) -> UIViewController
}
