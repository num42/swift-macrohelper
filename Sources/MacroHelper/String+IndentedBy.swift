internal import Foundation

extension String {
  public func indentedBy(_ prefix: String) -> String {
    split(separator: "\n")
      .map { prefix + $0 }
      .joined(separator: "\n")
  }
}
