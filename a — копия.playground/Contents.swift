import UIKit

//1. Решить квадратное уравнение. ax^2+bx+c=0.

var a: Double = 2
var b: Double = 9
var c: Double = 1.0
var x1: Double = 0.0
var x2: Double = 0.0
var discrt = pow(b,2)-4*a*c //вычисляем дискриминант
if (discrt<0)
{
    print("Корней нет")
}
if (discrt == 0)
{
    x1 = (-b+sqrt(discrt)/(2*a))
}
if (discrt>0)
{
    x1 = (-b+sqrt(discrt))/(2*a)
    x1 = (-b-sqrt(discrt))/(2*a)
}

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var catetA: Double = 4 //катет треугольника
var catetB: Double = 5  //катет треугольника

let s: Double = (catetA*catetB/2)//вычисление площади треульника
print("Площадь треугольника равна + \(s)")
let c1: Double = sqrt(catetA*catetA+catetB*catetB)// вычисление гипотинузы
print("Гипотинуза треугольника равна + \(c1)")
let p = (catetA+catetB+c1) //вычисление периметра с округлением до целых
print("Периметр треугольника равен + \(p)")


//3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var sum: Float = 10000
var pers: Float = 5
let i: Float = 5 //лет
var gain: Float = sum*pers/100*i
print("Сумма вклада через 5 лет будет \(gain)")
////нов