import UIKit
import Foundation

//1.Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
protocol Car {
    func action() -> String
}
var windStatus: String
var statEngine: String

extension Car {
    func windStatus () -> String {
       return
    }
    func statEngine () -> String {
      return
    }
    }
}
protocol CastomStringConvertible {
    
}

var color: String
var barnd: String

init(color: String, brand: String){
    self.color = color
    self.barnd = brand
}

//2.Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).


//3.Создать два класса, имплементирующих протокол «Car»: tunkCar и sportCar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
class trunkCar: Car {
    var weight: String = "1000"
    
    func action() -> String {
        return weight + "heavy"
        extension CustomStringConvertible {
            
        }
    }
}

class sportCar: Car {
    var weels: String = "one"
    
    func action() -> String{
        return weels
        extension CustomStringConvertible{
            
        }
        
    }
}

//4.Для каждого класса написать расширение, имплементирующее протокол «CustomStringConvertible».

//5.Создать несколько объектов каждого класса. Применить к ним различные действия.
let car1 = Carachter(barnd: "BMW", color: "Blue")
let car2 = Character()
//6.Вывести сами объекты в консоль.
print(<#T##items: Any...##Any#>)






