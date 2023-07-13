//
//  VideoListView.swift
//  Africa
//
//  Created by Roy Welborn on 1/5/23.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - Properties
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }//: Loop
            }//: End List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // shuffle videos
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    })
                    {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//: End NavigationView
    }
}

// MARK: - Preview
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
