import UIKit

public struct Prototype {
    
    var item: UIView
    
}

// MARK: - Extension

extension Prototype {
    
    public var left: AttributedPrototype {
        .init(item: item, attribute: .left)
    }
    
    public var right: AttributedPrototype {
        .init(item: item, attribute: .right)
    }
    
    public var top: AttributedPrototype {
        .init(item: item, attribute: .top)
    }
    
    public var bottom: AttributedPrototype {
        .init(item: item, attribute: .bottom)
    }
    
    public var leading: AttributedPrototype {
        .init(item: item, attribute: .leading)
    }
    
    public var trailing: AttributedPrototype {
        .init(item: item, attribute: .trailing)
    }
    
    public var width: AttributedPrototype {
        .init(item: item, attribute: .width)
    }
    
    public var height: AttributedPrototype {
        .init(item: item, attribute: .height)
    }
    
    public var centerX: AttributedPrototype {
        .init(item: item, attribute: .centerX)
    }
    
    public var centerY: AttributedPrototype {
        .init(item: item, attribute: .centerY)
    }
    
    public var firstBaseline: AttributedPrototype {
        .init(item: item, attribute: .firstBaseline)
    }
    
    public var lastBaseline: AttributedPrototype {
        .init(item: item, attribute: .firstBaseline)
    }
}
