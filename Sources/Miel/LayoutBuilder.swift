import UIKit

@resultBuilder
struct LayoutBuilder {
    
    public static func buildBlock(_ content: FinalPrototype...) -> [NSLayoutConstraint] {
        content.compactMap { $0.build() }
    }
    
    public static func buildBlock(_ content: [FinalPrototype]) -> [NSLayoutConstraint] {
        content.compactMap { $0.build() }
    }
}

public struct Layout {
    
    @discardableResult
    public init(@LayoutBuilder _ build: () -> [NSLayoutConstraint]) {
        let constraints = build()
        constraints.forEach {
            ($0.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        }
        NSLayoutConstraint.activate(constraints)
    }
}


