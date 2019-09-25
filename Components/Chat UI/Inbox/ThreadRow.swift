import SwiftUI

struct ThreadRow {
    @State var thread: Thread
    
    @State var height: CGFloat
}

extension ThreadRow: View {
    var body: some View {
        HStack {
            ImageDetail(image: "christianAmpeOregon", title: thread.title, detail: thread.detail, height: height)
        }
    }
}

struct ThreadRow_Previews: PreviewProvider {
    static var previews: some View {
        ThreadRow(thread: Thread(id: "0",
                                 title: "Christian Ampe",
                                 detail: "Have you ever been to Sonoma before?",
                                 info: "Tuesday"),
                  height: 60)
    }
}
