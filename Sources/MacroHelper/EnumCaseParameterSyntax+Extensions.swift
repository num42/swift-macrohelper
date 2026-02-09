internal import Foundation
public import SwiftSyntax

extension EnumCaseParameterSyntax {
  public var typeString: String {
    let wrappedType = type.as(OptionalTypeSyntax.self)?.wrappedType
    let isOptional = wrappedType != nil

    let theType = wrappedType ?? type

    let name =
      if let simpleType = theType.as(IdentifierTypeSyntax.self) {
        simpleType.name.text
      } else if let memberType = theType.as(MemberTypeSyntax.self) {
        [memberType.baseType.as(IdentifierTypeSyntax.self)!.name.text, memberType.name.text]
          .joined(separator: ".")
      } else if let arrayType = theType.as(ArrayTypeSyntax.self) {
        "[" + arrayType.element.as(IdentifierTypeSyntax.self)!.name.text + "]"
      } else {
        fatalError("Could not get name from type \(theType)")
      }

    return name + (isOptional ? "?" : "")
  }
}
