//
//  ServiceFactoryProtocol.swift
//  HelperKit
//
//  Created by Matt Croxson on 29/6/19.
//  Copyright © 2019 Matt Croxson. All rights reserved.
//

import Foundation

public protocol ServiceFactoryProtocol {
    var cacheService: CacheProvider { get }
    var dataService: DataProvider { get }
    var dateFormatService: DateFormatProvider { get }
}
