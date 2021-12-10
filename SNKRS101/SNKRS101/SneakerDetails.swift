//
//  SneakerDetails.swift
//  Sneakers
//
//  Created by James Giatpaiboon on 12/4/21.
//

import SwiftUI

//a struct that represents the view of a sneaker once it is clicked on within a category
struct SneakerDetails: View {
    
    let sneaker: Sneaker
    
    var body: some View {
        //this view displays all the data delcared in sneakersData and filled in within each of the other views
        VStack{
            Image(sneaker.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(sneaker.name).bold()
            Text(sneaker.description).padding()
            Text(sneaker.retailPrice).bold()
            
            HStack{
                Text("Buy Now: ").bold()
            Link(destination: URL(string: sneaker.stockxLink)!) {
                Image("stockx").resizable()
                    .frame(width: 30, height: 30)
            }
 
            Link(destination: URL(string: sneaker.goatLink)!) {
                Image("goat").resizable()
                    .frame(width: 30, height: 30)
            }
        
            Button(action: shareButton) {
                Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.black)
                        .padding()
            }
        
            }
        }
        .navigationBarTitle(Text(sneaker.name), displayMode: .inline)
    }
    
    //adding a share button that users can share with through messages or any other apps they have installed
    //the url leads to more information and stories on the sneaker - sneaker news website
    func shareButton() {
            let url = URL(string: sneaker.sneakerNews)
            let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
            UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
    }
}
//used for sneaker details as a protoype view
struct SneakerDetails_Previews: PreviewProvider {
    static var previews: some View {
        SneakerDetails(sneaker: Sneaker(name: "Jordan 1 High - Trophy Room",
                                        description:
                                            "Jordan Brand and Orlando-based retailer Trophy Room linked up once again to create one of the most anticipated releases of 2021, the Jordan 1 High Trophy Room. The design pays homage to Michael Jordan’s first All-Star appearance at the 1985 NBA All-Star Game in Indianapolis, which coincided with the release of the Air Jordan 1. The Jordan 1 High Trophy Room released in February of 2021 and retailed for $190."
                                            , image: "trophy1",
                                        retailPrice: "$190",
                                        stockxLink: "https://stockx.com/air-jordan-1-retro-high-trophy-room-chicago",
                                       goatLink: "https://www.goat.com/sneakers/air-jordan-1-retro-high-og-sp-da2728-100",
                                       sneakerNews: "https://sneakernews.com/2020/10/28/trophy-room-air-jordan-1-retro-high-og-sp/"))
    }
}
