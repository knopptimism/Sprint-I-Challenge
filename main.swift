struct Flavor {
  let name: String 
  let rating: Double
}

enum Size: Double {
  case small = 1.99 
  case medium = 2.50
  case large = 3.50
}


struct Cone {
  let flavor: Flavor
  let topping: String? = nil
  let size: Size
  func eat() {
    print("MMM! I love \(flavor.name)")
  }
}



  





  class IceCreamShop {
    var flavors: [Flavor]
    var totalSales: Double
    init(flavors: [Flavor],  totalSales: Double) {
      self.flavors = flavors
      self.totalSales = totalSales
    }
    func listTopFlavors() {
      var str = "Our top flavors are"
      for flavor in flavors {
        if flavor != nil {
          if flavor.rating >= 4.0 {
          let fname = flavor.name
        str += " \(fname)"
        print(fname)
      } 
        }
      else {"There are no flavors!"}
    }
    }
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
      if let topping = topping {
        let order = Cone(flavor: flavor,  size: size)
        let str = "Your \(order.flavor.name) ice cream with \(topping) is \(size.rawValue)."
        print(str)
        totalSales += order.size.rawValue
        return order
        } else {
          let order = Cone(flavor: flavor, size: size)
          let str = "Your \(order.flavor.name) icecream is \(size.rawValue)."
          totalSales += order.size.rawValue
          print(str)
          return order
        }
      }
}
  

let caramel: Flavor = Flavor(name: "Caramel", rating: 4.0)

let greenTea: Flavor = Flavor(name: "Green Tea", rating: 5)

let earlGrey: Flavor = Flavor(name: "Earl Grey", rating: 4.1)

let storeFlavors = [caramel, greenTea, earlGrey]

let myIceCreamShop = IceCreamShop(flavors: storeFlavors, totalSales: 0)


myIceCreamShop.listTopFlavors()

let c: Cone!  = myIceCreamShop.orderCone(flavor: caramel, topping:"chocolate", size: .small) 

let b: Cone! = myIceCreamShop.orderCone(flavor: greenTea, topping: "sprinkles", size: .medium)

print(myIceCreamShop.totalSales)

  

/*
func listTopFlavors() {
  var fList: String = "Our top flavors are "
  var name: Flavor
  for cone in flavors {
    name = cone.name 
    fList += "\(name) "
  }
  print(fList)
}
  
    
  }


  let extraFlavorList: [Flavor] = [caramel]

 



*/

