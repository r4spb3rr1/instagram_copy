import SwiftUI

struct TopNavigationView: View {
    let onMessageTap: () -> Void
    let onNotificationTap: () -> Void

    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .frame(width: 32, height: 32)
            Text("Instagram")
                .font(.system(size: 22))
                .fontWeight(.bold)

            Spacer()

            Button(action: onNotificationTap) {
                Image(systemName: "heart")
                    .imageScale(.large)
            }

            Button(action: onMessageTap) {
                Image(systemName: "message")
                    .imageScale(.large)
            }
        }
        .padding(.horizontal)
        .foregroundColor(.black)
    }
}

