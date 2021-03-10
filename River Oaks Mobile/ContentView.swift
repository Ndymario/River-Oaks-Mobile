//
//  ContentView.swift
//  River Oaks Mobile
//
//  Created by Nolan Yelverton on 3/8/21.
//

import SwiftUI

struct ContentView: View {
    
    // Variables for the Sports action sheet
    @State private var showingSportsActionsheet = false
    @State private var sportUrl = "http://romustangs.com"
    @State private var showingSport = false
    
    // Variables for the Social Media action sheet
    @State private var showingSocialActionsheet = false
    @State private var socialUrl = "http://romustangs.com"
    @State private var showingSocial = false
    
    var body: some View {
        NavigationView{
            ZStack(){
                
                // Background
                Image("BG-Gradient")
                
                // Vertically stack the RO text and out menu buttons
                VStack(){
                    Image("ro_text")
                        .resizable()
                        .frame(width: 300, height: 70)
                        .padding(.bottom)
                    
                    // Horizontally stack the button columns
                    HStack(){
                        // Column 1
                        VStack(){
                            NavigationLink(destination: WebsiteView(url: "http://romustangs.com")){
                                VStack(){
                                    Image("RO Crest Simple")
                                        .resizable()
                                        .frame(width: 75, height: 75);
                                    Text("Website")
                                        .padding(.bottom)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: WebsiteView(url: "https://smarttuition.com")){
                                VStack(){
                                    Image("Tuition_Icon")
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                    Text("Tuition")
                                        .padding(.bottom)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: WebsiteView(url: "https://www.plusportals.com/riveroaks")){
                                VStack(){
                                    Image("report")
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                    Text("Grades")
                                        .padding(.bottom)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding()
                        
                        //Column 2
                        VStack(){
                            VStack(){
                                NavigationLink(destination: WebsiteView(url: "http://www.nolanyelverton.com/gcal.php")){
                                    VStack(){
                                        Image("calendar")
                                            .resizable()
                                            .frame(width: 75, height: 75)
                                        Text("Calendar")
                                            .padding(.bottom)
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                Button(action: {self.showingSportsActionsheet = true}){
                                    VStack{
                                        Image("sports")
                                            .resizable()
                                            .frame(width: 75, height: 75)
                                        Text("Sports")
                                            .padding(.bottom)
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                NavigationLink(destination: WebsiteView(url: sportUrl), isActive: self.$showingSport){
                                        EmptyView()
                                    }
                            }
                            /*
                             Action sheet for the sports. Each set the URL the navigation link that the
                             web view loads.
                            */
                            .actionSheet(isPresented: $showingSportsActionsheet){
                                ActionSheet(title: Text("Select Sport"), message: Text("Select a sport or website to go there"), buttons: [
                                        .default(Text("Football")) {
                                            self.sportUrl = "http://romustangs.com/football"
                                            self.showingSport = true
                                        },
                                        .default(Text("Baseball")) {
                                            self.sportUrl = "http://romustangs.com/baseball"
                                            self.showingSport = true
                                        },
                                        .default(Text("Basketball")) {
                                            self.sportUrl = "http://romustangs.com/basketball"
                                            self.showingSport = true
                                        },
                                        .default(Text("Soccer")) {
                                            self.sportUrl = "http://romustangs.com/soccer"
                                            self.showingSport = true
                                        },
                                        .default(Text("Softball")) {
                                            self.sportUrl = "http://romustangs.com/softball"
                                            self.showingSport = true
                                        },
                                        .default(Text("Golf")) {
                                            self.sportUrl = "http://romustangs.com/golf"
                                            self.showingSport = true
                                        },
                                        .default(Text("Tennis")) {
                                            self.sportUrl = "http://romustangs.com/tennis"
                                            self.showingSport = true
                                        },
                                        .default(Text("Track")) {
                                            self.sportUrl = "http://romustangs.com/track-and-field"
                                            self.showingSport = true
                                        },
                                        .default(Text("Hudl")) {
                                            self.sportUrl = "https://www.hudl.com/team/v2/30988/Boys-Varsity-Football"
                                            self.showingSport = true
                                        },
                                        .default(Text("NFHS Live Stream")) {
                                            self.sportUrl = "http://www.nfhsnetwork.com/schools/river-oaks-high-school-monroe-la"
                                            self.showingSport = true
                                        },
                                        .cancel()
                                    ])
                            }
                            
                            VStack(){
                                Button(action: {self.showingSocialActionsheet = true}){
                                    VStack{
                                        Image("phone")
                                            .resizable()
                                            .frame(width: 75, height: 75)
                                        Text("Social Media")
                                            .padding(.bottom)
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                NavigationLink(destination: WebsiteView(url: socialUrl), isActive: self.$showingSocial){
                                        EmptyView()
                                    }
                        }
                        /*
                         Action sheet for the social medias. Each set the URL the navigation link that the
                         web view loads.
                        */
                        .actionSheet(isPresented: $showingSocialActionsheet){
                            ActionSheet(title: Text("Select Soical"), message: Text("Select a social media to be taken to the page"), buttons: [
                                    .default(Text("Instagram")) {
                                        self.socialUrl = "https://www.instagram.com/romustangs/?hl=en"
                                        self.showingSocial = true
                                    },
                                    .default(Text("Facebook Page")) {
                                        self.socialUrl = "https://www.facebook.com/RiverOaksSchool/"
                                        self.showingSocial = true
                                    },
                                    .default(Text("Twitter")) {
                                        self.socialUrl = "https://twitter.com/romustangs"
                                        self.showingSocial = true
                                    },
                                    .cancel()
                                ])
                        }
                        }
                        .padding()
                        
                        //Column 3
                        VStack(){
                            NavigationLink(destination: WebsiteView(url: "http://www.romustangs.com/cd-rom.html")){
                                VStack(){
                                    Image("Newspaper")
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                    Text("CD ROM")
                                        .padding(.bottom)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: WebsiteView(url: "http://www.romustangs.com/menus.html")){
                                VStack(){
                                    Image("lunch-icon")
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                    Text("Menu")
                                        .padding(.bottom)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: WebsiteView(url: "http://www.romustangs.com/faculty--staff.html")){
                                VStack(){
                                    Image("Contacts")
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                    Text("Contacts")
                                        .padding(.bottom)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding()
                    }
                    .padding(.top)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
