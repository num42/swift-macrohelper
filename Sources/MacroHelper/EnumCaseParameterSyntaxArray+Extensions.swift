internal import Foundation
public import SwiftSyntax

extension [EnumCaseParameterSyntax] {
  private func parameterName(for index: Int) -> String {
    if let name = self[index].firstName?.text {
      return name
    }

    if count == 1 {
      let typeName = self[index].typeString
      return typeName.prefix(1).lowercased() + typeName.dropFirst()
    }

    return "value\(index)"
  }

  public var asTypedTuple: String {
    if count <= 1 {
      return self[0].typeString
    }

    let parameters = enumerated().map { _, parameter in
      if let name = parameter.firstName?.text {
        return "\(name): \(parameter.typeString)"
      }

      return parameter.typeString
    }

    return "(\(parameters.joined(separator: ", ")))"
  }

  public var asParameters: String {
    if count <= 1 {
      return parameterName(for: 0)
    }

    let parameters = enumerated().map { index, _ in parameterName(for: index) }
    return parameters.joined(separator: ", ")
  }

  public var asUntypedList: String {
    if count <= 1 {
      return parameterName(for: 0)
    }

    let parameters = enumerated().map { index, _ in parameterName(for: index) }
    return "(\(parameters.joined(separator: ", ")))"
  }
}
