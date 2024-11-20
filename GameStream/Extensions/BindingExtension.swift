//
//  BindingExtension.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 5/06/24.
//

import SwiftUI

extension Binding where Value == Bool {
    var not: Binding<Value> {
        Binding<Value>(
            get: { !self.wrappedValue },
            set: { self.wrappedValue = !$0 }
        )
    }
}
