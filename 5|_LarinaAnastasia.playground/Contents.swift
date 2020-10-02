

//1.Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

//2.Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

//3.Создать два класса, имплементирующих протокол «Car»: tunkCar и sportCar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.protocol Car {
//4.Для каждого класса написать расширение, имплементирующее протокол «CustomStringConvertible».
//5.Создать несколько объектов каждого класса. Применить к ним различные действия.
//6.Вывести сами объекты в консоль.

import Foundation 

enum EngineState {
    case running, isOff
}
enum WindowState {
    case opend, closed
}

protocol Car : class {   //мы определили протокол
    func action()
    var engineState: EngineState { get set }
    var windowState: WindowState { get set }
}

extension Car { // расширяем обьект Car , новый инструментарий..
   func handleEngine () {
        switch engineState {
        case .isOff:
            self.engineState = .isOff
        default:
            self.engineState = .running
        }
    }
}

class TrunkCar: Car, CustomStringConvertible {
    var engineState: EngineState = .isOff
    var windowState: WindowState = .closed
    var weight = 1000
    
    var description: String {
        return "\(engineState), \(windowState), \(weight)"
    }
    
    func action() {
        print("\(weight)" + "heavy")
        
        }
    }


class SportCar: Car {
    var weels: String = "one"
    var windowState: WindowState = .closed
    var engineState: EngineState = .isOff
    
    func action() -> String{
        return weels
        }
     }







