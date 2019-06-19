//
//  EquinuxProduct.swift
//  FeedKit
//
//  Created by Marc Haisenko on 18.06.19.
//

import Foundation

/// equinux product information.
public class EquinuxProduct: NSObject {

    /// Build version (may be symbolic like "latest").
    public var build: String?
    
    /// Pattern of the binary or archive.
    public var filePattern: String?
    
    /// Group to which the product belongs.
    public var productGroup: String?
    
    /// Type of product.
    public var productType: String?
    
    /// Product identifier.
    public var productPID: String?
    
    /// List of sub-products.
    public var subProducts: [EquinuxSubProduct] = []
}

/// Information about a sub-product.
public class EquinuxSubProduct: NSObject {
    
    /// Name of the binary.
    public let binary: String
    
    /// Display title.
    public let subtitle: String?
    
    /// Additional tag to form unique identifiers.
    public let tag: String?

    /// Filename pattern if different than parent pattern.
    public var filePattern: String?
    
    /// Whether the product is for the AppStore.
    public let appStore: Bool
    
    /// Designated initializer.
    public init(binary: String, subtitle: String?, tag: String?, appStore: Bool) {
        self.binary = binary
        self.subtitle = subtitle
        self.tag = tag
        self.appStore = appStore
    }
}
