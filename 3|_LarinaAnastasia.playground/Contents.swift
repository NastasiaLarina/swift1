import UIKit

import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

//2. Описать в каждом наследнике специфичные для него свойства.Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.enum startEngine {

enum startEngine {
  case start, stop
}

enum openWind {
    case open, close
}

enum fullTrank {
    case full, empty
}
enum trunk {
    case full, empty
}

struct SportCar {
    let brand : String
    let model : String
    let release : Int
    var trunkVolume : Double{
        willSet {
            if (fullTrank == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand)\(model)   Багажник пустой: \(space)")
            } else { print("Input error or \(brand)\(model) Багажник полный.")}
        }
        
    }
     var startEngine : startEngine {
           willSet {
               if newValue == .start {
                   print ("\(brand)\(model) Двигатель заведен")
               } else {print("\(brand)\(model) Двигатель выключен")}
           }
       }
       var openWind : openWind {
           willSet {
               if newValue == .open {
                   print("\(brand)\(model) Открытые окна")
               } else { print("\(brand)\(model) Закрытые окна") }
           }
       }
       var trunk : trunk
       mutating func emptyTrunck() {
           self.trunk = .empty
           print ("\(brand)\(model) Пустой багажник")
       }
}


struct TrunkCar {
    let brand : String
    let model : String
    let release : Int
    var trunkVolume : Double{
        willSet {
            if (fullTrank == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand)\(model)   Багажник пустой: \(space)")
            } else { print("Input error or \(brand)\(model) Багажник полный.")}
        }
        
    }
     var startEngine : startEngine {
           willSet {
               if newValue == .start {
                   print ("\(brand)\(model) Двигатель заведен")
               } else {print("\(brand)\(model) Двигатель выключен")}
           }
       }
       var openWind : openWind {
           willSet {
               if newValue == .open {
                   print("\(brand)\(model) Открытые окна")
               } else { print("\(brand)\(model) Закрытые окна") }
           }
       }
       var trunk : trunk
       mutating func emptyTrunck() {
           self.trunk = .empty
           print ("\(brand)\(model) Пустой багажник")
       }
}
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

mutating func changerelease(c:String) {
    switch c {
    case "2000":
        self.release = "2000"
    case "2001":
        self.release = "2001"
    case "2002":
        self.release = "2002"
    case "2003":
        self.release = "2003"
    default:
        print("Input error.")
    }
}
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

var car = SportCar(brand: "Audi", model: "v2", release: 2011, trunkVolume: 5800 , startEngine: .stop, openWind: .open, fullTrank: .empty)

var trunk = TrunkCar (brand: "Car", model: "New", release: 2019, trunkVolume: 15000, startEngine: .start, openWind: .close, fullTrank: .empty)

car.startEngine = .start
car.trunkVolume = 340.0


trunk.startEngine = .stop
trunk.openWind = .close


//6. Вывести значения свойств экземпляров в консоль.

rint ("Информация о машине: brand&model: \(car.brand), release: \(car.release), free trunkVolume: \(car.trunkVolume), engine is \(car.startEngine)")
//