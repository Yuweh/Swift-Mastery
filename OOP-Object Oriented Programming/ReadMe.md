## Object Oriented Programming ⚔️ 

[![forthebadge](http://forthebadge.com/images/badges/made-with-swift.svg)](http://forthebadge.com) [![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)
----

Know Why OOP is essential in any programming language and what are the Pro's and Con's of using it.

What is OOP: Object Oriented Programming works in Swift by breaking things down into objects that can be inherited and composed from.

"Designing things in an object-oriented manner usually begins with a general concept extending to more specific types. You want to create musical instruments, so it makes perfect sense to begin with an instrument type and then define concrete (not literally!) instruments such as pianos and guitars from it. Think of the whole thing as a family tree of instruments where everything flows from general to specific and top to bottom"

Things to review:
* Encapsulation - Organizing properties and related operations in a class is a powerful tool for taming complexity. Class types are said to encapsulate data (e.g. stored properties) and behavior (e.g. methods).
* Inheritance: The child class (subclass) inherits all stored properties and methods from the parent class (root or base class)
* Overriding versus Overloading 
    * Override -> overlaps or extend over the similar method present in parent class
    * Overloading -> adds another func to support a previously declared function. For example an override play(:) was set and followed by a regular play(:) was declared, due to differences in parameters, Swift or XCODE could distinguish difference and execute appropriately.
* Types versus Instances
    * Types - A type summarizes the common features of a set of objects with the same characteristics. We may say that a type is an abstract interface that specifies how an object can be used.
    * Instances - An object is an instance of a class, and may be called a class instance or class object; instantiation is then also known as construction. Not all classes can be instantiated – abstract classes cannot be instantiated, while classes that can be instantiated are called concrete classes.
* Composition -
    *  is a way to combine simple objects or data types into more complex ones. This pertains that an instance of another class  contained in a class establishes "Has A" relationship. Different from Inhertance's is-a relationship.
    * The definition of composition is the act of putting something together, or the combination of elements or qualities. An example of a composition is a flower arrangement. An example of a composition is a manuscript. An example of acomposition is how the flowers and vase are arranged in Van Gogh's painting Sunflowers.
* Polymorphism - 
    * One of the great strengths of object oriented programming is the ability to use different objects through the same interface while each behaves in its own unique way. This is polymorphism meaning “many forms”.
    * polymorphism means that a call to a member function will cause a differentfunction to be executed depending on the type of object that invokes the function.
    * an important concept in object oriented programming which enables to change the behavior of the applications in the run time based on the object on which the invocation happens. Polymorphism is implemented using the concept of Method overloading and method overriding.
        * Method overloading is an example of static polymorphism, while method overriding is an example of dynamic polymorphism.
    * ADVANTAGES OF POLYMORPHISM. It helps programmers reuse the code and classes once written, tested and implemented. They can be reused in many ways. Single variable name can be used to store variables of multiple data types(Float, double, Long, Int etc).
* Access Control
    * private - The access control keyword private is extremely useful for hiding away complexity and protecting your class from invalid modifications. The fancy name for this is “protecting the invariant”. Invariance refers to truth that should always be preserved by an operation.
    * fileprivate: Visible from anywhere in the same file.
    * internal: Visible from anywhere in the same module or app.
    * public: Visible anywhere outside the module.
* There are additional access control related keywords:
    * open: Not only can it be used anywhere outside the module but also can be subclassed or overridden from outside.
    * final: Cannot be overridden or subclassed.

Others:
* Initialization Swift classes use an initialization process called two-phase-initialization to guarantee that all properties are initialized before you use them.
* Instance An object is an instance of a class, and may be called a class instance or class object; instantiation is then also known as construction. Not all classes can be instantiated – abstract classes cannot be instantiated, while classes that can be instantiated are called concrete classes.
    * What is the difference between a class and an instance?
        * Let's look at the difference between the two: 1) Instance variable: Instancevariables are associated with instances of the class i.e objects. Means, every object of the class will have its own copy of the instance variables. They are part of the state of the object, so they can only be accessed from the object.
        * an instance variable is a variabledefined in a class (i.e. a member variable ), for which each instantiated object of theclass has a separate copy, or instance. An instance variable is similar to a class variable. ... Access modifiers can be given to the instance variable.
* Reference Semantics -  This means that variables holding a class instance actually hold a reference to that instance. If you have two variables with the same reference, changing data in one will change data in the other, and it’s actually the same thing
* Instance

REVIEW QUESTIONS
    * What is the difference between a function and a class?
        * In object-oriented programming with classes, an instance variable is a variabledefined in a class (i.e. a member variable ), for which each instantiated object of theclass has a separate copy, or instance. An instance variable is similar to a class variable. ... Access modifiers can be given to the instance variable.
    * What is the difference between static and instance variables?
        * Static(Class) variables and instance variables both are member variablesbecause they are both associated with a specific class, but the difference betweenthem is Class variables only have one copy that is shared by all the differentobjects of a class, whereas every object has it's own personal copy of an instance
    * What is difference between class and structure?
        * Difference between Classes and Structures. ... Class can create a subclass that will inherit parent's properties and methods, whereas Structure does not support the inheritance. A class has all members private by default. A struct is a class where members are public by default.
    * What is difference between inheritance and composition?
        * Inheritance between two classes, where one class extends another class establishes "IS A" relationship. Composition on the other end contains an instance of another class in your class establishes "Has A" relationship.
    * What is difference between Object and Class?
        * The difference between object and class should be intuitive to most programmers: Class is a blueprint or template from which objects are created. Object is an instance of a class.
