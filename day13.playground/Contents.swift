protocol Building {
    var rooms: Int { get set }
    var cost: Int { get set }
    var estateAgent: String { get set }
    func printSalesSummary()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    var isKitchenPresent: Bool
    var washrooms: Int
    func printSalesSummary() {
        print("This house has \(rooms) rooms and is sold for $\(cost) by \(estateAgent)")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    var conferenceRooms: Int
    func printSalesSummary() {
        print("This office has \(rooms) rooms with \(conferenceRooms) big conference Rooms, This was sold by \(estateAgent) for $\(cost)")
    }
}

var house1 = House(rooms: 2, cost: 25_000, estateAgent: "SomeName", isKitchenPresent: true, washrooms: 1)
house1.printSalesSummary()

var office1 = Office(rooms: 10, cost: 10_000_000, estateAgent: "SomeBigEstateAgent", conferenceRooms: 5)
office1.printSalesSummary()



//protocol Vehicle {
//    func estimateTime(for distance: Int) -> Int
//    func travel(distance: Int)
//}
//
//struct Car: Vehicle {
//    func estimateTime(for distance: Int) -> Int {
//        distance / 50
//    }
//
//    func travel(distance: Int) {
//        print("I'm driving \(distance)km.")
//    }
//
//    func openSunroof() {
//        print("It's a nice day!")
//    }
//}
//
//func commute(distance: Int,using vehicle: Car) {
//    if vehicle.estimateTime(for: distance) > 100 {
//            print("That's too slow! I'll try a different vehicle.")
//    } else {
//            vehicle.travel(distance: distance)
//    }
//}
//
//let myCar = Car()
//commute(distance: 50000, using: myCar)

