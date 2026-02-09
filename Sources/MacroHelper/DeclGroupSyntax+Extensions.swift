internal import Foundation
public import SwiftSyntax

public extension DeclGroupSyntax {
  var accessModifierPrefix: String {
    modifiers
      .map { $0.description.replacingOccurrences(of: "\n", with: "") }
      .joined(separator: "")
  }

  var classOrStructName: String? {
    self.as(ClassDeclSyntax.self)?.name.description
      ?? self.as(StructDeclSyntax.self)?.name.description
  }

  var classOrStructMemberBlock: MemberBlockSyntax? {
    self.as(ClassDeclSyntax.self)?.memberBlock
      ?? self.as(StructDeclSyntax.self)?.memberBlock
  }
}
