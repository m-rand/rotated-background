import SwiftUI

struct TestView: View {
    var text: String = "HELLO WORLD"
    var body: some View {
        Text(text)
            .fontWeight(.bold) /// fontWeight cannot be applied to generic ViewModifier
            .modifier(RotatedBackgroundTextModifier())
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

struct RotatedBackgroundTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.black)
            .padding(.horizontal)
            .background(
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.orange)
                    .rotationEffect(Angle(degrees: -2))
                    .offset(y: 10)
                    .padding(.vertical, 5)
            )
    }
}
