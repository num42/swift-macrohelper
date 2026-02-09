internal import Foundation
public import SwiftSyntax

extension TokenSyntax {
  public var initialUppercased: String {
    let name = text
    guard let initial = name.first else {
      return name
    }

    return "\(initial.uppercased())\(name.dropFirst())"
  }
}
