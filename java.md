# Java

Java is an object-oriented programming language and a platform developed by Sun Microsystems (eaten by Oracle). Using the principle of **WORA** (Write Once, Run Anywhere), a Java application can be compiled and executed on any platform supported by Java. Flexible, popular, and well-supported, Java has helps developers write scalable client-server web applications, desktop and mobile applications, and frameworks and libraries.

## Features

- **Platform independence** The compiler converts source code to bytecode, then the JVM executes that bytecode. While each operating system has their own JVM implementation, so every JVM can execute bytecode regardless of origin of said code.

- **Clear, verbose syntax** Java has C-like syntax like C++ and C#, many syntax elements of the language are readable and widely used in programming. The Java API (Application Programming Interface) is also written using verbose, descriptive naming conventions making it simple to parse large code bases.

- **Garbage collection** The JVM performs automatic memory deallocation of unused objects at runtime. Programs are written without the need for complex memory management.

- **Multithreading** Java supports multithreading at both language and the standard library levels. It allows concurrent and parallel execution of several parts of a Java program.

## Programming and Compiling

Most Java applications only require the **JRE** (Java Runtime Environment). But to write and compile you need the **JDK** (Java Development Kit). While the JRE provides Java's standard libraries and exceptions as well as a JVM, the JDK provides all the above as well as _javac_, the compiler. Java source code is written in text files labeled with _.java_ extension. It is then compiled into bytecode in _.class_ files by _javac_. Then the bytecode is executed by the JVM, which translates the Java commands into low-level instructions to the operating system.

Since Java 6, all Java programs not run inside a container (such as a Servlet Web Container) start and end with the main method. The class containing the main method can have any name, but the method itself should always be named _main_

```java
class Example {
    public static void main(String[] args) {
        System.out.println("Num args:" + args.length);
    }
}
```

- _public_ is a Java access modifier keyword that means the `main` method can be accessed from any method during the program's execution.
- _static_ is a Java keyword that means the method can be invoked without creating an instance of the class that contains it, making it a global method.
- _void_ is a Java return type keyword that means the method doesn't return any values of any data type.
- _args_ is a Java variable of type String array which means the method can take command line arguments as an array of Strings

We can compile this code into a _.class_ file of the same name:

> javac Example.java

And to run the resulting `Example.class` file:

> java Example

The `java` and `javac` commands require the full directory path or class path to any source code or binary file respectively. If you have a package `com.demo` in the first line of Example, then you would nest the java file into a `com/demo/` directory and then run:

> javac com/demo/Example.java

> java com.demo.Example

From here we can add packages and imports, expanding the application into a set of interacting objects. By default, the _javac_ compiler implicitly imports several base packages from the standard library. the `-help` flag can display available options. For example, the following will compile using UTF-8 encoding while conforming to Java 1.8 features:

> javac -encoding UTF-8 -source 8 -target 8 Example.java

## Object-Oriented Programming

Although Java accommodates several paradigms, OOP is the foundation for most applications. In OOP, a program is organized into objects encapsulating related fields (representing its _state_) and methods (usually to control that state or perform related functions). When defining objects, Java reserves the keyword _class_ (not to be confused with the _.class_ file extension) which serves as their blueprint. An object in Java represents an instance in memory of a class, and also every class implicitly inherits from the _Object_ superclass which provides useful convenience methods such as _equals()_ and _toString()_. Java popularized several 'Pillars' of OOP design theory. While the numbers vary between OOP languages, Java focuses on four:

- **Abstraction** By simplifying objects to a set of useful features, we hide irrelevant details, reduce complexity, and increase efficiency. Abstraction is important at all levels of software and computer engineering, but essential to designing useful objects. Complicated real-world objects are reduced to simple representations.
    - abstract class: used for creating an incomplete model, can contain instance variables, subclass can only inherit from one 
    - interface: used for assuring particular behavior, variables are implicitly public, final, and static (constants)

- **Encapsulation** Objects should group together related variables and functions and be in complete control over them. So the state of an object should only change, if ever, through the object itself. Also known as data hiding, because the object has sole responsibility for its fields, and no outside object or function should interfere.

- **Inheritance** Code reuse is an important principle of programming (DRY - Don't Repeat Yourself), and new classes can reuse code from existing ones. This establishes a superclass-subclass (or parent-child) relationship where the derived classes inherit (and sometimes change) fields and methods from its parent.

- **Polymorphism** With inheritance, an object of a derived class can be referenced as instances of its parent class. This provides flexibility when invoking inherited methods with varying implementations in derived classes.
    - method overriding (dynamic or runtime polymorphism)
    - method overloading (compile time or static polymorphism)
    - covariant types (referring to a subclass as an instance of it's superclass)

## Variables

A value is stored and identified in memory by a variable. Variables have a name that makes it possible to access the value, and a type that defines what sort of value it stores.

```java
int variableName = 64;
String txtVar = "Hello World";
```

## Primitive data types

Java handles two kinds of datatypes: primitives and references. Primitives are variables that store simple values. There are eight in Java.

- Integer types: **byte**, **short**, **int**, and **long** (42)
- Floating-point types: **float**, and **double** (3.1415)
- Logical types: **boolean** (true)
- Character type: **char** ('x')

## Reference types

Reference types store the memory address location of more complex data types in the heap. Reference types include:

- Classes, including primitive wrappers
- Interfaces
- Enums
- Arrays

## Naming variables

- Case sensitivity
- Can only use letters, numbers, and _\$_ or \_\_\_ characters
- Cannot begin with a number
- Cannot be a reserved Java keyword

### Naming conventions

- packages are named with reverse url
- class names are pascal case and generally singular nouns
- method and variables use camel case
- constants use capital letters with underscores separating each word

## Scopes of a variable

A variable's reference will only exist within the context of its declared scope, which is based on the location of its declaration.

- **Static** or class scoped variables are visible to all instances of a related class.
- **Instance** or object scoped variables are visible to only that object instance.
- **Local** or method scoped variables are visible only within a method.
- **Block** or loop scoped variables are visible only within a block statement.

Be aware of _shadowing_: when two variables in different scopes share names.

## Methods

Methods accept a list of arguments known as _parameters_ and return some value. They are used to implement repeatable, consistent actions on variable input, much like math functions.

```java
public int myMethod(int a, int b);
public int myMethod(int a);
```

## Constructors

Classes not only define object fields and methods, but how it should be instantiated through special methods called constructors. Constructors must have no return type and share the same name as its class. Java will automatically give you a _noargs_ constructor. However, if you define any constructor, you will lose the automatically given constructor.

While a constructor may be _private_, used for singletons, it may not be _final_, _static_, or _abstract_.

## Access modifiers

- **private** - accessible only within the context of that class
- **default** - accessible within the context of a package, has no associated keyword so is set when no modifier is used
- **protected** - accessible to the package, but also to derived child classes outside of the package
- **public** - accessible anywhere

Classes should only be public or default. There are no cascading access levels, and unspecified fields will be default. Subclasses can only change inherited fields to be less restrictive.

# Arrays

### Declaration

Java Arrays are special reference types that store similarly typed data iteratively. A pair of brackets define an array of some data type, and can be written anywhere after the type:

```java
// One-Dimensional Arrays
int[] arrayOne;
int []arrayTwo;
int arrayThree[];

// Two-Dimensional Arrays
int[][] 2DArrayOne;
int 2DArrayTwo[][];
int []2DArrayThree[];
```
### Iteration

Java for loops can iterate through arrays like most other languages:

```java
// One-Dimensional Arrays
for (int i = 0; i < arrayOne.length; i++) {
    System.out.print(arrayOne[i]);
}

// Two-Dimensional Arrays
for (int i = 0; i < 2DArrayOne.length; i++) {
    for (int j  =0; j < 2DArrayOne[i].length; j++) {
        System.out.print(2DArrayOne[i][j]);
    }
}

// Foreach loops
for (int i : arrayOne) {
    System.out.print(i);
}
```

### Manipulation

The `java.util.Arrays` class provides various methods for manipulating arrays.

```java
int[] nums = {234, 5346, 3, 64};
Arrays.sort(nums);
System.out.println(Arrays.toString(nums));
```


### Varargs

Varargs, or variable arguments, is a means of passing in a variable amount of parameters into a method. Varargs is essentially syntactic sugar for creating an array as a parameter, so that no array needs to be initialized and populated.
 
```java
public int variableAdd(int... nums){
    int sum = 0;
    for(int i: nums){
        sum+=i;
    }
    return sum;
}
```

```java
public static void main(String... args){
    // do something
}
```

Only one vararg can be declared in a method signature, and it must be the last parameter declared.


# Exception Handling

When an something wrong occurs during execution, the current stack frame will throw an exception. If the exception is not handled, or thrown up the stack to be handled elsewhere, the program will crash. Good exception handling helps a program continue execution. Common issues involve stack or heap memory overflow, an array iterating out of bounds, or an interrupted stream or thread.

### Hierarchy

Exception and error objects extend Throwable and are either checked or unchecked.

<img src="https://www.javamex.com/tutorials/exceptions/ExceptionHierarchy.png" alt="exception hierarchy">

Checked exceptions are those which inherit from the Exception class directly. Your compiler is aware of the potential of a checked exception being thrown. Checked exceptions, such as `IOException`, must be handled or thrown before your code will compile successfully. The compiler does not force us to handle unchecked exceptions. Most unchecked exceptions extend RuntimeException, such as `NullPointerException`. Errors are serious issues and should not be handled, such as `StackOverflowError`.

### Throws

The `throws` keyword re-throws an exception up the stack to the method that called the throwing method. If the exception is continually thrown and never handled, the compiler will be satisfied in the case of checked exceptions but any issues will still break the program.

```java
public void methodThatThrows() throws IOException {
    // throw (singular) will throw a new exception every time.
    throw new IOException();
}

public void methodThatCalls() {
    methodThatThrows(); // IOException must now be handled here, or methodThatCalls() must use throws as well (this code does not compile)
}
```

### Try-Catch

The most basic form of exception handling is the try-catch:

```java
public void methodThatThrows() {
    try {
        throw new IOException();
    } catch (IOException exception) {
        // Do something with the exception
        logger.warn("IOException thrown");
    }
}
```

A try block must be followed by at least one catch (or finally) block, but there can be any number of catch blocks for specific (or broad) exceptions. Catch blocks must be ordered from most specific to least specific Exception objects else later catch blocks catching subclasses of exceptions caught in catch blocks above it will become unreachable code.

Multiple exceptions can also be handled in one catch block:

```java
public void methodThatThrows() {
    try {
        throw new IOException();
    } catch (IOException ex1 | ServletException ex2) {
        // Do something with the exception
        logger.warn("Exception thrown");
    }
}
```

Multiple catch blocks:
```java
public void methodThatThrows(){
    try {
        // some io operations that may throw exceptions
    } catch (FileNotFoundException ex2){
        logger.warn("File was not found");
    } catch (IOException ex1) {
        logger.warn("Something went wrong with I/O operations");
    } catch (ServletException ex3){
        logger.warn("Issue with Servlet");
    }
}
```

### Finally

Try blocks can be followed by one finally block, and can either replace the mandatory single catch block or follow one or more catch blocks. They are always guaranteed to execute, even if no exceptions are thrown, and are useful for closing resources that may be left open in memory due to an interruption from a thrown exception.

```java
public void methodThatThrows() throws IOException {
    FileReader fr = null;
    try {
        fr = new FileReader(); // could throw an IO exception
    } finally {
        if(fr!=null){
            fr.close();
        }
        System.out.println("Will always run");
    }
}
```

### Try-with-resources

Declaring and defining a resource - any object that implements AutoCloseable - within a pair of parenthesis after the try keyword removes the necessity of a finally block to close that resource.

```java
public void methodThatThrows() {
    try (FileReader fr = new FileReader()) {
        // read from file
    } catch (IOException exception) {
        logger.warn("IOException thrown");
    }
}
```

```java
public void methodThatThrows() throws IOException {
    try (FileReader fr = new FileReader()) {
        // read from file
    } 
}
```