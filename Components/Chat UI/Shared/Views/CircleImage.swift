import SwiftUI

struct CircleImage {
    @State var name: String
    
    @State var dimension: CGFloat
}

extension CircleImage: View {
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: dimension,
                   height: dimension)
            .clipShape(Circle())
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(name: "christianAmpeOregon",
                    dimension: 40)
    }
}
