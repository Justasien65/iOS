//
//  SettingsView.swift
//  Fructus
//
//  Created by Roy Welborn on 12/27/22.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    //MARK: BODY
    var body: some View {
        NavigationView
        {
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack(spacing: 20) {
                    //MARK: 1.. SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center,
                               spacing: 10)
                        {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories.  None have cholesterol.  Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }//: HSTACK
                    }
                   
                    //MARK: 2.. SECTRION 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggling the switch in this box.  That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }//: GROUPBOX
                    //MARK: 3.. SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        Divider().padding(.vertical, 4)
                        SettingsRowView(name: "Developer:", content: "Roy Welborn")
                        SettingsRowView(name: "Designer:", content: "Roy Welborn")
                        SettingsRowView(name: "Compatibility", content: "iOS 14+")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUIMasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@Justasien", linkDestination: "twitter.com/justasien")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        SettingsRowView(name: "Swift UI Verion", content: "2.0")
                        
                    }//: GROUPBOX
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "x.circle")
                        }
                       )
                
            }//: SCROLLVIEW
        }//: NAVIGATIONVIEW
    }
}

//MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewDevice("iPhone 12 Pro")
            .preferredColorScheme(.dark)
    }
}
