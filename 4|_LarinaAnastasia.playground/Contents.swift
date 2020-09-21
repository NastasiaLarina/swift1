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
