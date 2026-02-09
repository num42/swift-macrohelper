internal import Foundation
public import SwiftSyntax

public extension PatternBindingListSyntax.Element {
  var type: String {
    // Remove any inlined comments after the type.
    typeAnnotation!.type.description
      .components(separatedBy: "//")
      .first!
      .trimmingCharacters(in: .whitespaces)
  }
}
