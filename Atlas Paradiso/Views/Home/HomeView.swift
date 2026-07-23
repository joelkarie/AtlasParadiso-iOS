//
//  HomeView.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/17/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()

                VStack(spacing: 24) {
//                    Text("Atlas Paradiso")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
                    VStack(spacing: 0) {
                        Image("atlas_paradiso_title")
                            .resizable()
                            .scaledToFit()
                            .padding(.vertical, 20)
                            .padding(.horizontal, 16)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color("Secondary"))
                    .overlay(alignment: .top) {
                        Rectangle()
                            .fill(Color("Highlight"))
                            .frame(height: 2)
                    }
                    .overlay(alignment: .bottom) {
                        Rectangle()
                            .fill(Color("Highlight"))
                            .frame(height: 2)
                    }
                    .padding(.horizontal, -16)
                    
//                    Image("atlas_paradiso_title")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 280)
//                        .background(white)
                    
                    Text("In the Flow")
                        .font(.headline)
                        .foregroundStyle(.secondary)

                    Image("paradise_pelican")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                    
                    Spacer()

                    VStack(spacing: 16) {

                        NavigationLink {
                            LocationListView()
                        } label: {
                            FeatureCard(
                                icon: "mappin.and.ellipse",
                                title: "Locations",
                                subtitle: "Places we've discovered."
                            )
                        }

                        FeatureCard(
                            icon: "theatermasks",
                            title: "Theatres",
                            subtitle: "Stages we've worked at."
                        )

                        FeatureCard(
                            icon: "bed.double",
                            title: "Digs",
                            subtitle: "Places We've Stayed."
                        )

                        FeatureCard(
                            icon: "photo",
                            title: "Photos",
                            subtitle: "Memories"
                        )
                    }
                }
                .padding()
            }
        }
    }
}

struct FeatureCard: View {
    let icon: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Image( systemName: icon)
                .font(.largeTitle)
                .frame(width: 60)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(12)
    }
}
#Preview {
    HomeView()
}
