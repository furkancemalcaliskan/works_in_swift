//
//  WidgetHero.swift
//  WidgetHero
//
//  Created by Furkan Cemal Çalışkan on 10.10.2022.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.dejkoveci.WidgetKitTest"))
    var heroData : Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), hero: Heroes(image: "spiderman", name: "Spiderman", realName: "Peter Parker"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        if let hero = try? JSONDecoder().decode(Heroes.self, from: heroData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
            completion(entry)
        }
        
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        if let hero = try? JSONDecoder().decode(Heroes.self, from: heroData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
            let timeline = Timeline(entries: [entry], policy: .never)
        }
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let hero : Heroes
}

struct WidgetHeroEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        CircularImageView(image: Image(entry.hero.image))
    }
}

@main
struct WidgetHero: Widget {
    let kind: String = "WidgetHero"

    var body: some WidgetConfiguration {
        
        
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetHeroEntryView(entry: entry)
        }
        .configurationDisplayName("WidgetHero")
        .description("Widget Test")
    }
}
