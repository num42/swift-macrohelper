internal import Foundation
public import SwiftSyntax

extension DeclGroupSyntax {
  public var accessModifierPrefix: String {
    modifiers
      .map { $0.description.replacingOccurrences(of: "\n", with: "") }
      .joined(separator: "")
  }

  public var classOrStructName: String? {
    self.as(ClassDeclSyntax.self)?.name.description
      ?? self.as(StructDeclSyntax.self)?.name.description
  }

  public var classOrStructMemberBlock: MemberBlockSyntax? {
    self.as(ClassDeclSyntax.self)?.memberBlock
      ?? self.as(StructDeclSyntax.self)?.memberBlock
  }
}
