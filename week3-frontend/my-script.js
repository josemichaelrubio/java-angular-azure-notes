/*
let myFunction = function(){}

let myFunction2 = () => {};

function helloLog(){
    console.log("Hello from my external js file");
}

helloLog();

// {message: 'hello'}
function returnMessageObject(){
    return 
    {
        message: 'hello'
    }
}

function logMessage(message){
    console.log(message);
}

logMessage('hello from function');
logMessage(378942389);
logMessage(null)

const myVar = 24;

let str1 = "this is a string";
let str2 = 'this is also a string';
let str3 = `this is a template literal. 
I can create multiline strings,
and also inject variables right into my string
like ${logMessage} or ${myVar}`;

logMessage(8=='8');
logMessage(8==='8');
logMessage(7+"7");
logMessage(7*"7");
logMessage(7*"bananas");


// truthy and falsy values
if(250){
    console.log("250 is truthy")
} else {
    console.log("250 is falsy")
}


logMessage(Boolean(0))
logMessage(Boolean(NaN))
logMessage(Boolean(null))
logMessage(Boolean(undefined))
logMessage(Boolean(''))
logMessage(Boolean(false))
logMessage(Boolean({}))
*/

let raccoon = {
    isEatingTrash: true,
    eyeColor: 'brown',
    makeNoise: function(){
        console.log("chatter");
    },
}

let arr = [4, true, raccoon];

let stringArr = ['alpha', 'bravo', 'charlie'];

// gives us the values in the array
for(let str of stringArr){
    console.log(str);
}

// using the in keyword with arrays gives us the index 
for(let index in stringArr){
    console.log(index+": "+stringArr[index]);
}

// I can use in with with objects (gives fields), but I cannot use of
for(let x in raccoon){
    console.log(x);
}

var x = 10;
var x = 'hi';

let y = 10;
// let y = 'hi'; this re-declaration causes an error
y = 'hi';

const z = 10;
// z = 'hi'; this reassignment causes an error


console.log(a);

// a is "hoisted" to the top of its current scope (global scope), let and const do not allow for hoisting
var a = 6;

console.log(a);

console.log(add(4,5));

function add(num1, num2){
    return num1+num2;
}


let score = 90;
let pass = false;
if(score>70){
    let pass = true; // this is a new variable in a new scope
}
console.log(pass)



