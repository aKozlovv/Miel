import UIKit

extension UIView {
    
    public var layout: Prototype {
        .init(item: self)
    }
    
    public func buildLayout(@LayoutBuilder _ build: (Prototype) -> [NSLayoutConstraint] )
    {
        let constraints = build(Prototype(item: self))
        constraints.forEach {
            ($0.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        }
        NSLayoutConstraint.activate(constraints)
    }
}
