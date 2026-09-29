# MacroHelper

Shared SwiftSyntax extensions used by the num42 Swift macros.

## Requirements

- Swift 6.3 toolchain or later (tested with Xcode 27)
- Platforms: macOS 13, iOS 13, tvOS 13, watchOS 6, macCatalyst 13

## Contents

- `DeclGroupSyntax`: `accessModifierPrefix`, `classOrStructName`, `classOrStructMemberBlock`
- `StructDeclSyntax`: `storedPropertyBindings(includingStatic:)`
- `PatternBindingListSyntax.Element`: `type`
- `EnumCaseElementSyntax`: `hasAssociatedValues`, `associatedValues`
- `EnumCaseParameterSyntax`: `typeString`
- `[EnumCaseParameterSyntax]`: `asTypedTuple`, `asParameters`, `asUntypedList`
- `TokenSyntax`: `initialUppercased`
- `String`: `indentedBy(_:)`
