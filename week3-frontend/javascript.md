# JavaScript

- implementation of ECMAScript, a scripting-language specification
  - ES6 (ES2015)
    - some ES6 features
    - let, const
    - arrow notation
    - for/of loop
    - symbol
    - template literals
  - ECMAScript 2016, 2017, 2018
  - European Computer Manufacturers Association
- a language we can use in conjunction with our HTML files to add functionality and enhance the capabilities of our webpages
- JavaScript was traditionally interpreted by the browser (most recent browsers have JIT compilers for optimization)
  - without JIT compilation, each time a loop executes it would translate the inner code to machine code
  - with JIT compilation, the inner code would be translated to machine code once and then the machine code would be executed for every iteration of the loop
- loosely typed
- single threaded

# Scope

- local scope (lexical scope)
- global scope
- block scope (ES6 +)

# Declaring a variable

- keywords to declare variable:
  - var
    - declares a variable in the current scope (local or global)
  - let
    - declares a variable in the current scope (global, local, or block)
    - cannot be redeclared
  - const
    - declares a variable in the current scope (global, local, or block)
    - cannot be declared without being assigned
    - cannot be redeclared or reassigned

## Data types

- number (2^64, 64 bit floating point)
- string
- boolean
- null
- undefined
- symbol

Everything else is an object

- object is a combination of key value pairs

```javascript
let cat = {
  name: "Ferdinand",
  breed: "calico",
  age: 2,
};
```

# JavaScript in the Browser

- provides functionality to our webpage
- include js in our webpages in internal script or external script
  - `<script> //js code goes here </script>`
  - `<script src="my-external-script.js"></script>` (this is easier to test, maintain, and reuse)

```javascript
let myVar = "Hello World":

```

# DOM Manipulation

- Document Object Model, a tree-like object representation of our html elements
- provides us a way to interface with our html using javascript

window

- document
  - doctype declaration
  - html
    - head
    - body ...

### Accessing Elements on Our Webpage using JS

The document object has methods which allow us to target specific nodes in the DOM. These DOM methods allow for programmatic access to the tree of nodes.

- getElementById
- getElementsByClassName
- getElementsByName
- getElementsByTagName

We can access or manipulate attributes of our nodes.

- [element].setAttribute("attribute","value")
- [element].[attribute]
  - [element].innerText
  - [element].src
- [element].hasAttribute
- [element].classList

Access Related Nodes

- [element].firstChild
- [element].lastChild
- [element].nextSibling
- [element].previousSibling
- [element].children

Add/Remove elements to the DOM

- document.createElement("tagname")
- [element].removeChild([element])

Events

- types of interactions with our HTML page that we can handle programmatically with JS

ex.

- onchange
- onclick
- onmouseover
- onkeydown
- onload

1. assign the appropriate attribute of the html tag to a function
   - `<button onclick="submitForm()">Click to submit</button>`
2. set the appropriate property of the javascript object to a function
   - `<button id="submit-button">Click to submit</button>`
   - document.getElementById("submit-button").onClick = function(){//... submits form}
3. create an event listener on the element specifying a callback function \*
   - `<button id="submit-button">Click to submit</button>`
   - document.getElementById("submit-button").addEventListener("click", callback, bubbling/capturing)

# AJAX - Asynchronous JavaScript and XML

- programming practice of building more complex and dynamic webpages which prepare and send HTTP requests
- browser provides an XMLHttpRequest object in order to perform HTTP requests

XMLHttpRequest - readyState

- 0 unsent : object created, open method has not yet been invoked
- 1 opened
- 2 headers_received
- 3 loading
- 4 done

```javascript
const xhr = new XMLHttpRequest();
xhr.open("GET", "https://pokeapi.co/api/v2/pokemon/1");
xhr.onreadystatechange = function () {
  if (readyState === 4) {
    // process response
  }
};
xhr.send();
```
