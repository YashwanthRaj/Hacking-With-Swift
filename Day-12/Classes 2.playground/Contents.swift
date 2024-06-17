// Checkpoint
//Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
//
//But there’s more:
//
//The Animal class should have a legs integer property that tracks how many legs the animal has.
//The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
//The Cat class should have a matching speak() method, again with each subclass printing something different.
//The Cat class should have an isTame Boolean property, provided using an initializer.


class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
}

// Sub classes of Animal
class Dogs: Animal {
    func speak() {
        print("Bow Bow")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meww Meww")
    }
}

// Sub classes of Dog
class Corgi: Dogs {
    override func speak() {
        print("Corgi Bow Bow")
    }
}

class Poodle: Dogs {
    override func speak() {
        print("Poodle Bow Bow")
    }
}

// Sub class of cats
class Persian: Cat {
    override func speak() {
        print("Persian Meww Meww")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion Meww Meww")
    }
}

var corgiDog = Corgi(legs: 4)
print(corgiDog.legs, corgiDog.speak())
