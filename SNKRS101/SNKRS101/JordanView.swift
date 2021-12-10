//
//  ContentView.swift
//  Sneakers
//
//  Created by James Giatpaiboon on 12/4/21.
//

import SwiftUI
    //Jordan View - this page will be shown once the user clicks on the Jordan logo
struct JordanView: View {
    
    //setting the data for each sneaker under the category "Jordan"
    //data here is from the variables we created in sneakersData - name, description, image, retailPrice, stockxLink, goatLink, and sneakerNews
    @State var sneakers = [
        Sneaker(name: "Jordan 1 High - Trophy Room",
                description:
                    "Jordan Brand and Orlando-based retailer Trophy Room linked up once again to create one of the most anticipated releases of 2021, the Jordan 1 High Trophy Room. The design pays homage to Michael Jordan’s first All-Star appearance at the 1985 NBA All-Star Game in Indianapolis, which coincided with the release of the Air Jordan 1.",
                image: "trophyroom",
                retailPrice: "Reatil Price: $190",
                stockxLink: "https://stockx.com/air-jordan-1-retro-high-trophy-room-chicago",
                goatLink: "https://www.goat.com/sneakers/air-jordan-1-retro-high-og-sp-da2728-100",
                sneakerNews: "https://sneakernews.com/2020/10/28/trophy-room-air-jordan-1-retro-high-og-sp/"),

        Sneaker(name: "Jordan 6 - Travis Scott",
                description: "Travis Scott and Jordan Brand teamed up to deliver the Air Jordan 6 Retro Travis Scott British Khaki. The British Khaki marks the second time that Travis has added his touch to the Jordan 6 silhouette, the first being the 2019 Air Jordan 6 Travis Scott.",
                image: "ts6",
                retailPrice: "Retail Price: $250",
                stockxLink: "https://stockx.com/air-jordan-6-retro-travis-scott-british-khaki",
                goatLink: "https://www.goat.com/sneakers/travis-scott-x-air-jordan-6-retro-british-khaki-dh0690-200",
                sneakerNews: "https://sneakernews.com/2021/04/26/travis-scott-air-jordan-6-british-khaki-dh0690-200/"),
     
        Sneaker(name: "Jordan 3 - A Ma Maniere",
               description: "After a slew of collaborative releases with adidas and Nike, DC-based sneaker boutique A Ma Maniére teamed up with Jordan Brand to release a women’s exclusive Jordan 3 with the Air Jordan 3 A Ma Maniére (W). The release aligns with their short film Raised By Women, an ode to the strides and accomplishments of everyday women in urban communities.",
                image: "amm3",
                retailPrice: "Retail Price: $200",
                stockxLink: "https://stockx.com/air-jordan-3-retro-a-ma-maniere-w",
                goatLink: "https://www.goat.com/sneakers/a-ma-maniere-x-wmns-air-jordan-3-retro-sp-violet-ore-dh3434-110",
                sneakerNews: "https://sneakernews.com/2021/05/17/maniere-air-jordan-3-dh3434-110-global-release-date/"),
     
        Sneaker(name: "Jordan 1 - Travis Scott x Fragment Low",
               description: "The Air Jordan 1 Low Fragment Design x Travis Scott nods to the original 2016 Air Jordan 1 Fragment with its simple color blocking. It features a smooth white leather upper with black and royal blue leather overlays. From there, a signature reversed Swoosh and yellowed soles add a Cactus Jack flair to the classic silhouette.",
                image: "ts1low",
                retailPrice: "Retail Price: $150",
                stockxLink: "https://stockx.com/air-jordan-1-low-fragment-design-x-travis-scott",
                goatLink: "https://www.goat.com/sneakers/fragment-design-x-travis-scott-x-air-jordan-1-retro-low-dm7866-140",
                sneakerNews: "https://sneakernews.com/2021/07/30/fragment-design-travis-scott-air-jordan-1-low-og-dm7866-140-release-date/"),
     
        Sneaker(name: "Jordan 1 High - Travis Scott x Fragment",
                description: "The Air Jordan 1 High OG SP Fragment Design x Travis Scott fragment draws inspiration from a Jordan 1 Royal press sample from 1985 with its white and blue tumbled leather upper. Similar to previous Travis Scott Jordan 1s, signature reverse Swooshes and hidden stash pockets in the collar add on to the classic design. From there, both Travis Scott's Cactus Jack and Fragment logos are debossed in black on the heel wrap.",
                image: "tsfragmenthi",
                retailPrice: "Retail Price: $200",
                stockxLink: "https://stockx.com/air-jordan-1-high-og-sp-fragment-design-x-travis-scott",
                goatLink: "https://www.goat.com/sneakers/fragment-design-x-travis-scott-x-air-jordan-1-retro-high-dh3227-105",
                sneakerNews: "https://sneakernews.com/2021/07/28/fragment-travis-scott-air-jordan-1-high-dh3227-105-store-list/"),
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
                    .navigationBarTitle("Jordan")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JordanView()
    }
}

struct SneakerView: View {
    
    let sneaker: Sneaker
    
    var body: some View {
        HStack{
            Image(sneaker.image)
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
            VStack(alignment: .leading){
                Text(sneaker.name).bold()
                    .padding()
            }
        }
    }
}
