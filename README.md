# Miel
## Nothing but sugar for UIKit autolayout
![Frame 1](https://github.com/aKozlovv/Miel/assets/154222268/ad24eecd-21ab-4d53-a07e-77272a88aa07)

Miel provides more elegant and declarative approach for build layout. Thanks to the power of the builder pattern this package provides more control over every constraint.
## Example:
```sh
 Layout {
            label.layout
                .top
                .equal(to: view.layout.top)
                .constant(50)
            
            label.layout
                .width
                .equal(to: view.bounds.size.width / 2)
            
            button.layout
                .top
                .equal(to: label.layout.bottom)
                .constant(15)
            
            button.layout
                .leading
                .equal(to: view.layout.leading)
                .constant(15)
            
            button.layout
                .trailing
                .equal(to: view.layout.trailing)
                .constant(-15)
        }
```

## Features

- Global result builder
- Ready to use
- More control over every anchor

## Usage

Just install package via Swift Package Manager and you will able to call "buildLayout" method. The method returns a prototype for customization. All the usual properties such as top, leading, height and so on are available for constraint customization
```sh
button.buildLayout { prototype in
            prototype
                .height
                .equal(to: 50)
            
            prototype
                .width
                .equal(to: 130)
        }
```
This library has been designed for more elegant use. The library provides a Layout structure that allows you to describe constraints for any View within a closure. Example:
```sh
public extension Animation {
    static func fadeIn(duration: TimeInterval = 0.3) -> Animation {
        Animation(duration: duration, closure: { $0.alpha = 1 })
    }
}

public extension Animation {
    static func resize(to size: CGSize, duration: TimeInterval = 0.3) -> Animation {
        Animation(duration: duration, closure: { $0.bounds.size = size })
    }
}
```
