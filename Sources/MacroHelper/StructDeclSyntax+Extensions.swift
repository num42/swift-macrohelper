internal import Foundation
public import SwiftSyntax

extension StructDeclSyntax {
  public func storedPropertyBindings(includingStatic: Bool) -> [PatternBindingSyntax] {
    memberBlock.members
      .compactMap { $0.decl.as(VariableDeclSyntax.self) }
      .filter { includingStatic || !$0.modifiers.contains { $0.name.text == "static" } }
      .flatMap(\.bindings)
      .filter { $0.accessorBlock == nil }
  }
}
