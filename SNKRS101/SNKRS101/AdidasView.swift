//
//  AdidasView.swift
//  Sneakers
//
//  Created by James Giatpaiboon on 12/6/21.
//

import SwiftUI

//Adidas View - this page will be shown once the user clicks on the Adidas logo

struct AdidasView: View {
    //setting the data for each sneaker under the category "Adidas"
    //data here is from the variables we created in sneakersData - name, description, image, retailPrice, stockxLink, goatLink, and sneakerNews
    
    @State var sneakers = [
    
        Sneaker(name:"Yeezy Slide - Pure",
                 description: "The adidas Yeezy Slide Pure is constructed of Pure EVA foam with a soft footbed that offers an immediate step in comfort. An outsole with accentuated grooves for traction and support adds the finishing touches to the design.",
                 image: "pure",
                 retailPrice: "Retail Price: $55",
                 stockxLink: "https://stockx.com/adidas-yeezy-slide-pure",
                 goatLink: "https://www.goat.com/sneakers/yeezy-slides-pure-yzy-slide-pure",
                 sneakerNews: "https://sneakernews.com/2021/04/23/adidas-yeezy-slides-april-2021-release-info/"),
    
        Sneaker(name:"Yeezy Foam RNNR - Ochre",
                 description: "Yeezy Foam RNNR Ochre features a golden Ochre one-piece EVA foam construction. Oval cut-outs throughout the design provide ventilation, while a cushioned footbed offers support.",
                 image: "ochre",
                 retailPrice: "Retail Price: $80",
                 stockxLink: "https://stockx.com/adidas-yeezy-foam-rnnr-ochre",
                 goatLink: "https://www.goat.com/sneakers/yeezy-foam-runner-ochre-yzy-foam-rnnr-ochre",
                 sneakerNews: "https://sneakernews.com/2021/09/08/adidas-yeezy-foam-runner-yellow-ochre-gw3354-release-date/"),
        
        Sneaker(name:"Yeezy Boost 350 V2 - Black Red",
                 description: "The adidas Yeezy Boost 350 V2 Black Red is one of the first original colorways to drop after the silouhette’s debut in 2016. Despite its original 2017 release, the 350 V2 Black Red restocked in 2020, giving fans a second chance at grabbing a pair at retail.",
                 image: "bred",
                 retailPrice: "Retail Price: $220",
                 stockxLink: "https://stockx.com/adidas-yeezy-boost-350-v2-core-black-red-2017",
                 goatLink: "https://www.goat.com/sneakers/yeezy-boost-350-v2-bred-cp9652",
                 sneakerNews: "https://sneakernews.com/tag/adidas-yeezy-boost-350-v2/"),
    
        Sneaker(name:"Yeezy Boost 350 V2 - Zebra",
                 description: "Adidas is back with their latest Yeezy Boost 350 V2. Fresh off the heels of NBA All-Star Weekend, these Yeezy's are nicknamed the Zebras, and come in a classic white, black and red color scheme. Sporting a white-based Primeknit upper with black accents giving off a Zebra stripe vibe, “SPLY-350” displayed across the sides in red finished off by a translucent BOOST cushioned sole.",
                 image: "zebra",
                 retailPrice: "Retail Price: $220",
                 stockxLink: "https://stockx.com/adidas-yeezy-boost-350-v2-white-core-black-red",
                 goatLink: "https://www.goat.com/sneakers/yeezy-boost-350-v2-zebra-cp9654",
                 sneakerNews: "https://sneakernews.com/2020/04/14/adidas-yeezy-350-zebra-restock/"),
    
        Sneaker(name:"Yeezy Boost 700 - Faded Azure",
                 description: "The adidas Yeezy Boost 700 Faded Azure features a tonal blue upper constructed with layered mesh, leather, and suede. At the base, a blue BOOST midsole with hits of orange provides cushioning and durability. Reflective detailing in the heel wrap and grey oval laces complete the design.",
                 image: "azure",
                 retailPrice: "Retail Price: $240",
                 stockxLink: "https://stockx.com/adidas-yeezy-boost-700-faded-azure",
                 goatLink: "https://www.goat.com/sneakers/yeezy-boost-700-faded-azure-yzy-700-faded-azure",
                 sneakerNews: "https://sneakernews.com/2021/11/14/adidas-yeezy-boost-700-faded-azure-gz2002-release-date/"),
    
    ]
    //formatting the view of JordanView - displays the sneaker name along with the a small image beside it
    //added navigation bar title on the top of this view - titled depending on the category/brand it is in
    
    var body: some View {
        NavigationView{
            List{
                ForEach(sneakers){ sneaker in
                    NavigationLink(destination: SneakerDetails(sneaker: sneaker)){
                        SneakerView(sneaker: sneaker)
                    }
                    .navigationBarTitle("Adidas")
                    
                }
            }
        }
    }
}

struct AdidasView_Previews: PreviewProvider {
    static var previews: some View {
        AdidasView()
    }
}
