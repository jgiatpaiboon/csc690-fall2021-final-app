//
//  HomeView.swift
//  Sneakers
//
//  Created by James Giatpaiboon on 12/6/21.
//

import SwiftUI

//home page of the app is shown here
struct HomeView: View {
    var body: some View {
        
      NavigationView {    //navigation view used to go from view to view depending on what logo the user clicks on
            //VStack used to organize the logos
                    VStack {
        //each icon is linked to a navigationlink - this send the user to each icon depending on which icon they click
        //each logo uses an image that is resized to make the homepage aligned well
                        NavigationLink(destination: JordanView()) {
                            Image("jumpman")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .padding()
                        }
                        NavigationLink(destination: NikeView()) {
                            Image("nike")
                                .resizable()
                                .frame(width: 100, height: 100)
                                
                        }
                        NavigationLink(destination: AdidasView()) {
                            Image("originaladidas")
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                        NavigationLink(destination: NewBalanceView()) {
                            Image("new-balance")
                                .resizable()
                                .frame(width: 150, height: 150)
                        }
                    }
                 .navigationBarTitle(Text("SNKRS101"))  //header of the home page view
                }
            }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
