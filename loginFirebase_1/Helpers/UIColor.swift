import UIKit

extension UIColor{
    //button
    static let rgbBlue = UIColor(red: 38, green: 83, blue: 217)
    static let rgbDarkRed = UIColor(red: 191, green: 64, blue: 64)
    
    //background
    static let rgbLightPurple = UIColor(red: 204, green: 204, blue: 255)
    
    
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
            self.init(
                red: CGFloat(red) / 255.0,
                green: CGFloat(green) / 255.0,
                blue: CGFloat(blue) / 255.0,
                alpha: a
            )
        }
    
    
    
}
