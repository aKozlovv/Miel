import UIKit

public struct AttributedPrototype {
    
    // MARK: - Properties
    
    private(set) var item: UIView
    private(set) var attribute: NSLayoutConstraint.Attribute
    
    // MARK: - API
    
    public func equal(to item: RelationObject) -> FinalPrototype {
         FinalPrototype(self, relation: .equal, to: item)
     }
    
    public func greater(than item: RelationObject) -> FinalPrototype {
         FinalPrototype(self, relation: .greaterThanOrEqual, to: item)
     }
    
    public func less(than item: RelationObject) -> FinalPrototype {
         FinalPrototype(self, relation: .lessThanOrEqual, to: item)
     }
    
}
