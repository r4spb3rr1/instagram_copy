//
//  ViewForTests.swift
//  instagram_copy
//
//  Created by magzhan on 30.06.2025.
//

import SwiftUI

struct ViewForTests: View {
    var body: some View {
        VStack()
        {
            ForEach((1...5), id: \.self){ _ in
                AsyncImage(url: URL(string: "https://picsum.photos/200"))
                { image in
                    image
                        .image?.resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
                .frame(width: 200, height: 200)
            }
        }
    }
}

#Preview {
    ViewForTests()
}
