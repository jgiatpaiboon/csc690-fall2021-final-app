//
//  NikeView.swift
//  Sneakers
//
//  Created by James Giatpaiboon on 12/6/21.
//

import SwiftUI

//Nike View - this page will be shown once the user clicks on the Nike logo

struct NikeView: View {
    //setting the data for each sneaker under the category "Nike"
    //data here is from the variables we created in sneakersData - name, description, image, retailPrice, stockxLink, goatLink, and sneakerNews
    @State var sneakers = [
        Sneaker(name: "Nike Dunk Low - Panda",
            description: "The Nike Dunk Low Retro White Black (GS) silhouette comes in a stark black and white colorway and is made from premium leather materials throughout. Additionally, white Nike lettering complements the rear ankle support of the silhouette while the Nike Air text along with the customary company Swoosh logo adorns the tongue. In keeping with the color scheme, a white midsole resting atop a black outsole rounds out the look of this Dunk Low Retro shoe.",
            image: "pandadunk",
               retailPrice: "Retail Price: $85",
               stockxLink: "https://stockx.com/nike-dunk-low-retro-white-black-2021",
               goatLink: "https://www.goat.com/sneakers/dunk-low-black-white-dd1391-100",
               sneakerNews: "https://sneakernews.com/2020/12/31/nike-dunk-low-black-white-release-date/"),
    
        Sneaker(name: "Nike Dunk Low - UNC",
               description: "Nodding to the University of North Carolina Tarheels, the Nike Dunk Low UNC is constructed of a white leather upper with University Blue overlays and Swooshes. From there, a white and University woven Nike tongue label completes the design.",
                image: "uncdunk",
                retailPrice: "Retail Price: $100",
                stockxLink: "https://stockx.com/nike-dunk-low-unc-2021",
                goatLink: "https://www.goat.com/sneakers/dunk-low-university-blue-dd1391-102",
                sneakerNews: "https://sneakernews.com/2021/03/11/nike-dunk-low-university-blue-dd1391-102/"),
               
        Sneaker(name: "Nike Dunk Low - UNLV",
                description: "Nike re-issued one of its most notable Dunk colorways with the Nike Dunk Low Retro Medium Grey Varsity Red UNLV. The UNLV colorway debuted in 1985, as part of Nike’s Be True To Your School Campaign for the Nike Dunk. The Nike Dunk Low Retro Medium Grey Varsity Red UNLV features a red and grey leather upper, with grey on the vamp and medial panels and red on the upper’s overlay and Swoosh.",
               image: "unlvdunk",
               retailPrice: "Retail Price: $100",
               stockxLink: "https://stockx.com/nike-dunk-low-retro-medium-grey-varsity-red-2021",
        goatLink: " https://www.goat.com/sneakers/dunk-low-sp-unlv-2020-dd1391-002",
        sneakerNews: "https://sneakernews.com/2021/02/17/nike-dunk-low-unlv-dd1391-002-release-reminder/"),
    
    Sneaker(name:"Nike SB Dunk Low - Mummy",
            description: "The Nike SB Dunk Low Mummy draws inspiration from the Ancient Egyptian mummification process. It features a layered textile upper with cross-stitched detailing and a suede Swoosh overlay. At the heel, eye graphics peek out from underneath the layered textile. A glow-in-the-dark sole and Eye of Horus woven tongue tag completes this Halloween design.",
            image: "mummy",
            retailPrice: "Retail Price: $110",
            stockxLink: "https://stockx.com/nike-dunk-sb-low-mummy",
            goatLink: "https://www.goat.com/sneakers/dunk-low-sb-mummy-dm0774-111",
            sneakerNews: "https://sneakernews.com/2021/10/26/nike-sb-dunk-low-mummy-dm0774-111-store-list/"),
    
    Sneaker(name:"Nike Air Max 1 - Patta Aqua",
             description: "The Nike Air Max 1 Waves Patta Noise Aqua arrives in leather and mesh construction with an Aqua wave-shaped mudguard. Mini Swoosh embroidered detailing atop the mudguard and a co-branded woven tongue label provide a custom feel.",
             image: "aqua",
             retailPrice: "Retail Price: $160",
             stockxLink: "https://stockx.com/nike-air-max-1-patta-noise-aqua-without-bracelet",
             goatLink: "https://www.goat.com/sneakers/patta-x-air-max-1-noise-aqua-dh1348-004",
             sneakerNews: "https://sneakernews.com/2021/10/26/patta-nike-air-max-1-noise-aqua-dh1348-004-release-date/"),
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
                    .navigationBarTitle("Nike")
                    
                }
            }
        }
    }
}

struct NikeView_Previews: PreviewProvider {
    static var previews: some View {
        NikeView()
    }
}

