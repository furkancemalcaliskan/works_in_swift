//
//  ContentView.swift
//  WidgetKitTest
//
//  Created by Furkan Cemal Çalışkan on 10.10.2022.
//

import SwiftUI
import WidgetKit

let superHeroArray = [superman,ironman,spiderman]

struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.dejkoveci.WidgetKitTest"))
    
    var heroData : Data = Data()
    
    
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
    }
    
    func saveToDefaults(hero: Heroes){
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
