//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by Aristide LAUGA on 01/08/2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
	case threads
	case replies

	var title: String {
		switch self {
			case .threads: "Threads"
			case .replies: "Replies"
		}
	}

	var id: Int { self.rawValue }
}
