//
//  RatingView.swift
//  Bookworm
//
//  Created by Adrian Mowat on 31/12/2024.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int

    func image(for number: Int) -> Image {
        if number > rating {
            offImage ?? onImage
        } else {
            onImage
        }
    }

    var label = ""
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow

    var body: some View {
        HStack {
            if !label.isEmpty {
                Text(label)
            }

            ForEach(1..<maximumRating + 1, id: \.self) { number in
                Button {
                    rating = number
                } label: {
                    image(for: number)
                        .foregroundStyle(number > rating ? offColor : onColor)
                }
            }

        }
        .buttonStyle(.plain)
    }
}

#Preview {
    RatingView(rating: .constant(4))
}