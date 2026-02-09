internal import Foundation

public extension String {
  func indentedBy(_ prefix: String) -> String {
    split(separator: "\n")
      .map { prefix + $0 }
      .joined(separator: "\n")
  }
}
