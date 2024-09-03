import SwiftUI

@main
struct PlannerApp: App {
    @StateObject private var eventData = EventData()
    
    var body: some Scene {
        WindowGroup {
            EventList(eventData: eventData)
                .task {
                    eventData.loadEvents()
                }
                .onChange(of: eventData.events) { _, _ in
                    eventData.saveEvents()
                }
        }
    }
}
