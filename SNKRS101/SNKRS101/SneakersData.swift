//
//  FavSneakers.swift
//  Sneakers
//
//  Created by James Giatpaiboon on 12/4/21.
//

import Foundation
import SwiftUI

struct Sneaker: Hashable, Codable, Identifiable{
    //backend data that will be used for each detail of the sneaker
    var id = UUID()
    let name: String
    let description: String
    let image: String
    let retailPrice: String
    let stockxLink: String
    let goatLink: String
    let sneakerNews: String
}
