import SwiftUI

struct ImageDetail: View {
    @State var image: String
    @State var title: String
    @State var detail: String
    
    @State var height: CGFloat
    
    var body: some View {
        HStack {
            CircleImage(name: image,
                        dimension: height)
                .clipped()
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(detail)
                    .font(.footnote)
            }
        }
    }
}

struct ImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetail(image: "christianAmpeOregon",
                    title: "Christian Ampe",
                    detail: "christianampe",
                    height: 60)
    }
}
