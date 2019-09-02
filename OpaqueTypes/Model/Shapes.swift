import Foundation

protocol Shape {
    func draw() -> String
}

struct Triangle: Shape {
    var size: Int
    func draw() -> String {
        var result = [String]()
        for length in 1 ... self.size {
            result.append(String(repeating: "*", count: length))
        }
        return result.joined(separator: "\n")
    }
}

struct FlippedShape<T: Shape>: Shape {
    var shape: T
    func draw() -> String {
        let lines = self.shape.draw().split(separator: "\n")
        return lines.reversed().joined(separator: "\n")
    }
}

extension Shape {

    func flip() -> FlippedShape<Self> {
        return FlippedShape(shape: self)
    }

}

func drawShapes() {
    let smallTriangle = Triangle(size: 3)
    print(smallTriangle.draw())

    print("--------------------")

    let flippedShape = smallTriangle.flip()

    print(flippedShape.draw())

}
