//
//  Question.swift
//  Bu
//
//  Created by Giga Khizanishvili on 27.01.24.
//

import Foundation

struct Question {
    let id: String
    let commentForReader: String?
    let distributingMaterialURL: URL?
    /// Body of the question
    let description: String
    let answer: String
    let otherPossibleAnswers: String?
    let comment: String
    let sources: [String] // TODO: Try to make typed with string and url
    let author: String
}
