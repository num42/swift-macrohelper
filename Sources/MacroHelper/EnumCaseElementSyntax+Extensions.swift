internal import Foundation
public import SwiftSyntax

extension EnumCaseElementSyntax {
  public var hasAssociatedValues: Bool {
    !associatedValues.isEmpty
  }

  public var associatedValues: [EnumCaseParameterSyntax] {
    guard let parameterList = parameterClause?.parameters else {
      return []
    }

    return parameterList.compactMap { $0 }
  }
}
