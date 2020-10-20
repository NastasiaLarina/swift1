import UIKit

import Foundation
// не справилась с дз
//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

enum CarDoorState {
    case open, close
}
enum Transmission {
    case manual, auto
}

enum CarHatchState {
    case open, close
}

class Car {
    let color: UIColor
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    var doorState: CarDoorState
  
 
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: CarDoorState) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
    }
    
    func doorState() {
        CarDoorState = .open
    }
}

//2

class trunkCar {
    let color: UIColor
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    var doorState: CarDoorState
    var hatchState: CarHatchState// состояние люка
    // Также изменим конструктор
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: CarDoorState, hatchState: CarHatchState) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
        self.hatchState = hatchState
    }
    // нам надо открывать люк
    func openHatch() {
        hatchState = .open
    }
   // и закрывать
    func closeHatch() {
        hatchState = .close
    }
}

class sportCar {
    let color: UIColor
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    var doorState: CarDoorState
    var hatchState: CarHatchState// состояние люка
    // Также изменим конструктор
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: CarDoorState, hatchState: CarHatchState) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
        self.hatchState = hatchState
    }
    // нам надо открывать люк
    func openHatch() {
        hatchState = .open
    }
   // и закрывать
    func closeHatch() {
        hatchState = .close
    }
}

/*//1
class Car {
    var color: String
    var barnd: String
    var relize: Int
    
    init(color: String, brand: String, relize: Int){
        self.color = color
        self.barnd = brand
        self.relize = relize
    }
    func action(){}
    
}
//2
class TrunCar: Car {
    var maxLoad: Int
    init(maxLoad: Int) {
        self.maxLoad = maxLoad
        super.init(color: "Red", brand: "FDR", relize: 2000)
    }
}
class SportCar: Car {
    var maxSpeed: Int
    init(maxSpeed: Int){
        self.maxSpeed = maxSpeed
        super.init(color: "Blue", brand: "BMW", relize: 2020)
    }
}

//3
enum CarActions {
    case loadTruck (weight: Int)// акшин загрузить кар
    case apgrateSpeed (time: Int)//акшин скорость
}
class Car {
    var color: String
    var barnd: String
    var relize: Int
    
    init(color: String, brand: String, relize: Int){
        self.color = color
        self.barnd = brand
        self.relize = relize
    }
    func action(action: CarActions){}
}
class TrunCar: Car {
    var maxLoad: Int
    init(maxLoad: Int) {
        self.maxLoad = maxLoad
        super.init(color: "Red", brand: "FDR", relize: 2000)
    }
}
class SportCar: Car {
    var maxSpeed: Int
    init(maxSpeed: Int){
        self.maxSpeed = maxSpeed
        super.init(color: "Blue", brand: "BMW", relize: 2020)
    }
}
//4
enum CarActions {
    case loadTruck (weight: Int)// акшин загрузить кар
    case apgrateSpeed (time: Int)//акшин выехать на гонку
}
class Car {
    var color: String
    var barnd: String
    var relize: Int
    
    init(color: String, brand: String, relize: Int){
        self.color = color
        self.barnd = brand
        self.relize = relize
    }
    func action(action: CarActions){}
}
class TrunCar: Car {
    var maxLoad: Int
    init(maxLoad: Int) {
        self.maxLoad = maxLoad
        super.init(color: "Red", brand: "FDR", relize: 2000)
    }
    override func action(action: CarActions){
        switch action {
        case .loadTrack(let weight):
            self.maxLoad += weight
        default:
            break
        }
    }
    
}
class SportCar: Car {
    var maxSpeed: Int
    init(maxSpeed: Int){
        self.maxSpeed = maxSpeed
        super.init(color: "Blue", brand: "BMW", relize: 2020)
    }
    override func action(action: CarActions){
        switch action {
        case .upradeSpeed(let speed):
            self.maxSpeed += speed
        default:
            break
        }
    }
}
//5,6
let sportCar = SportCar(maxSpeed: 250)
let truckCar = TrunCar(maxLoad: 1000)

print(sportCar.maxSpeed)
print(truckCar.maxLoad)

sportCar.action(action: .upgrateSpeed(speed: 50))
truckCar.action(action: .loadTruck(wight: 100))

print(sportCar.maxSpeed, sportCar.color, sportCar.relize)
print(truckCar.maxLoad)
*/
