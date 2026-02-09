internal import Foundation
public import SwiftSyntax

extension PatternBindingListSyntax.Element {
  public var type: String {
    // Remove any inlined comments after the type.
    typeAnnotation!.type.description
      .components(separatedBy: "//")
      .first!
      .trimmingCharacters(in: .whitespaces)
  }
}
