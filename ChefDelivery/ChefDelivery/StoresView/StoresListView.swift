//
//  StoresListView.swift
//  ChefDelivery
//
//  Created by Felipe Assis on 05/01/24.
//

import SwiftUI

struct StoresListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Lojas")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.leading, 16)
                .padding(.bottom, 8)

            List(storesMock) {
                store in
                StoreItemView(orderItem: store)
                    .listRowSeparator(.hidden)
            }
            .scrollDisabled(true)
            .scrollContentBackground(.hidden)
            .scaledToFit()
            .listStyle(.plain)
        }
       
    }
}

#Preview {
    StoresListView()
}