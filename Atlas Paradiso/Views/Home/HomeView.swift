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
            VStack(spacing: 24) {
                Text("Atlas Paradiso")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Exploring The World")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                VStack(spacing: 16) {
                    FeatureCard(icon: "mappin.and.ellipse", title: "Locations", subtitle: "Places we've been to.")
                    
                    FeatureCard(icon: "theatermasks", title: "Theatres", subtitle: "Stages we've worked at.")
                    
                    FeatureCard(icon: "bed.double", title: "Digs", subtitle: "Places We've Stayed.")
                    
                    FeatureCard(icon: "photo", title: "Photos", subtitle: "Memories")

                }
                
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
