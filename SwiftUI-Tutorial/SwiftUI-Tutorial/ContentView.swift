//
//  Created by Robert Petras
//  Credo Academy ♥ Design and Code
//  https://credo.academy 
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    private let imageURL: String = "https://www.nasa.gov/sites/default/files/thumbnails/image/main_image_star-forming_region_carina_nircam_final-5mb.jpg"
    
    var body: some View {
        
        // MARK: 1. Basic
        //AsyncImage(url:URL(string: imageURL))
        
        // MARK: 2. Scaling
        // AsyncImage(url: URL(string: imageURL), scale: 4.0)
        
        // MARK: 3. Placeholder
       
        /*
         AsyncImage(url:URL(string: imageURL))
        {
            image.imageModifier()
                
        } placeholder: {
            Image(systemName: "photo.circle.fill".iconModifier())
                .foregroundColor(.purple)
                .opacity(0.5)
        }
        .padding(40)
       */
        
        // MARK: 4. Phase
        /*
        AsyncImage(url: URL(string: imageURL)) {
            phase in
            
            if let image = phase.image {
                image.imageModifier()
            } else if phase.error != nil{
                Image(systemName: "ant.circle.fill").iconModifier()
            } else {
                Image(systemName: "photo.circle.fill").iconModifier()
            }
            
        }
         */
        // MARK: 5 Animation
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) {
            phase in
            switch phase {
            case .success(let image):
                    image
                    .imageModifier()
                    //.transition(.move(edge: .bottom))
                    // .transition(.slide)
                    .transition(.scale)
            case .failure(_):
                    Image(systemName: "ant.circle.fill").iconModifier()
            case .empty:
                    Image(systemName: "photo.circle.fill").iconModifier()
            @unknown default:
                ProgressView()
            }
                
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
