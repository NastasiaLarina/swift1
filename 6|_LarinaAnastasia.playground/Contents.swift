
//1.Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2.Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3.*Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
 

import Foundation
struct Book {
    var chapter: String
    var page: Int
}
extension Book: CustomStringConvertible {
    var description : String {
        return "Chapter: \(chapter), Page: \(page)"
    }
}
struct queue <T> {
    private var topic: [T] = []
    public var isEmpty: Bool {
        return topic.count == 0
    }
    mutating func enqueue(element: T) {
        topic.append(element)
    }
    mutating func dequeue()->T {
        return topic.removeLast()
    }
    public var head: T? {
        if isEmpty {
            print("Массив пустой")
            return nil
        } else {
            print("последний элемент \(topic.last!)")
            return topic.last
        }
    }
    public var front: T? {
        if isEmpty {
            print("Массив пустой, нет элементов.")
            return nil
        } else {
            print("последний элемент \(topic.first!)")
            return topic.first
        }
    }
    
    func printQueue() {
        print(topic)
    }
}
extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in topic {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}
var small = queue<Book>()
small.enqueue(element: .init(chapter: "Ferst", page: 6))
small.enqueue(element: .init(chapter: "Second", page: 7))
small.enqueue(element: .init(chapter: "Third", page: 15))
let bestSmall = small.myFilter(predicate: {$0.page == 5})
print(bestSmall)
