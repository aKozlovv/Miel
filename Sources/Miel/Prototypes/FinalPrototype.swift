import UIKit

public class FinalPrototype {
    
    // MARK: - Properties
    
    private var firstItem: AttributedPrototype
    private var secondItem: RelationObject
    private var relation: NSLayoutConstraint.Relation
    
    private var identifier: String?
    private var constant: CGFloat = 0
    private var multiplier: CGFloat = 1
    private var priority: UILayoutPriority = .init(1000)
    
    private weak var constraint: NSLayoutConstraint!
    
    // MARK: - Init
    
    init(_ first: AttributedPrototype,
         relation: NSLayoutConstraint.Relation,
         to second: RelationObject)
    {
        self.firstItem = first
        self.secondItem = second
        self.relation = relation
    }
    
    // MARK: - Builder
    
    public func build() -> NSLayoutConstraint {
        var constraint: NSLayoutConstraint!
        
        if let secondView = secondItem as? UIView {
            constraint = .init(item: firstItem.item, attribute: firstItem.attribute, relatedBy: relation, toItem: secondView, attribute: firstItem.attribute, multiplier: multiplier, constant: constant)
        }
        else if let secondPrototype = secondItem as? AttributedPrototype {
            constraint = .init(item: firstItem.item, attribute: firstItem.attribute, relatedBy: relation, toItem: secondPrototype.item, attribute: secondPrototype.attribute, multiplier: multiplier, constant: constant)
        }
        else {
            var cgFloat: CGFloat!
            if let secondInt = secondItem as? Int {
                cgFloat = CGFloat(secondInt)
            }
            else if let secondDouble = secondItem as? Double {
                cgFloat = Double(secondDouble)
            }
            else {
                cgFloat = (secondItem as! CGFloat)
            }
            
            constraint = .init(item: firstItem.item, attribute: firstItem.attribute, relatedBy: relation, toItem: nil, attribute: .notAnAttribute, multiplier: multiplier, constant: cgFloat)
        }
        constraint.identifier = identifier
        constraint.priority = priority
        
        self.constraint = constraint
        return constraint
    }
    
    
    // MARK: - API
    
    @discardableResult
    public func identifier(_ value: String) -> FinalPrototype {
        identifier = value
        constraint?.identifier = value
        return self
    }
    
    @discardableResult
    public func constant(_ value: CGFloat) -> FinalPrototype {
        constant = value
        constraint?.constant = value
        return self
    }
    
    @discardableResult
    public func multiplier(_ value: CGFloat) -> FinalPrototype {
        multiplier = value
        return self
    }
    
    @discardableResult
    public func priority(_ value: UILayoutPriority) -> FinalPrototype {
        priority = value
        constraint?.priority = value
        return self
    }
}
