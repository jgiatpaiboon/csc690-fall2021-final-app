//
//  NewBalanceView.swift
//  Sneakers
//
//  Created by James Giatpaiboon on 12/8/21.
//

import SwiftUI

//New Balance View - this page will be shown once the user clicks on the New Balance logo
struct NewBalanceView: View {
    
    @State var sneakers = [
        //setting the data for each sneaker under the category "New Balance"
        //data here is from the variables we created in sneakersData - name, description, image, retailPrice, stockxLink, goatLink, and sneakerNews
    
        Sneaker(name:"New Balance 550 Blue",
                 description: "The return of a legend. Originally worn by pros, the new 550 pays tribute to the 1989 original with classic details reminiscent of the era - simple, clean and true to its legacy.",
                 image: "nbwhiteblue",
                 retailPrice: "Retail Price: $110",
                 stockxLink: "https://stockx.com/new-balance-550-white-blue",
                 goatLink: "https://www.goat.com/sneakers/550-white-blue-bb550-blue",
                 sneakerNews: "https://sneakernews.com/2021/08/30/new-balance-550-team-pack-release-date/"),
        Sneaker(name:"New Balance 550 Green",
                 description: "The return of a legend. Originally worn by pros, the new 550 pays tribute to the 1989 original with classic details reminiscent of the era - simple, clean and true to its legacy.",
                 image: "nbgreen",
                 retailPrice: "Retail Price: $110",
                 stockxLink: "https://stockx.com/new-balance-550-white-green-black",
                 goatLink: "https://www.goat.com/sneakers/550-shifted-sport-pack-green-bb550le1",
                 sneakerNews: "https://sneakernews.com/2021/08/30/new-balance-550-team-pack-release-date/"),
        Sneaker(name:"New Balance 550 Red",
                 description: "The return of a legend. Originally worn by pros, the new 550 pays tribute to the 1989 original with classic details reminiscent of the era - simple, clean and true to its legacy.",
                 image: "nbred",
                 retailPrice: "Retail Price: $110",
                 stockxLink: "https://stockx.com/new-balance-550-white-red-black",
                 goatLink: "https://www.goat.com/sneakers/550-shifted-sport-pack-team-red-bb550hr1",
                 sneakerNews: "https://sneakernews.com/2021/08/30/new-balance-550-team-pack-release-date/"),
    
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
                    .navigationBarTitle("New Balance")
                }
            }
        }
    }
}

struct NewBalanceView_Previews: PreviewProvider {
    static var previews: some View {
        NewBalanceView()
    }
}
