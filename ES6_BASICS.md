React and ES6 Basics
=============

ES6 is the most recent JavaScript proposal. It's not usable yet
on most browsers, but it can be used via tools like Babel, Webpack
or TypeScript's compiler.

It gives us some new functions as well as a lot of new syntax.
Here's an overview of the more useful ones.

### `const` and `let`
They're essentially variable declaration constructs.

`let`'s scope only exists within the block it is declared in.

```js
function varTest() {
  var x = 1;
  if (true) {
    var x = 2;  // same variable!
    console.log(x);  // 2
  }
  console.log(x);  // 2
}

function letTest() {
  let x = 1;
  if (true) {
    let x = 2;  // different variable
    console.log(x);  // 2
  }
  console.log(x);  // 1
}
```

`const` can't be modified once declared.

```js
const BEST_NUMBER = 7;

// this will throw an error - Uncaught TypeError: Assignment to constant variable.
BEST_NUMBER = 20;
```

### Arrow Functions
Arrow functions have a more compact syntax and don't create a new
scope (they don't have their own `this`, `arguments`, `super`, or
`new.target`).

```js
const arrowFunction = () => {
    return true;
}
// Is the same as
function traditionalFunction() {
    return true;
}
```

Multiple syntax exist, depending on your preference and how many
parameters your function contains.

```js
// Parenthesis are optional when there's only one parameter
const addOne = num => {
    return num + 1;
}
// Is the same as
function addOne(num) {
    return num + 1;
}
```

You can also do a one-liner. With this syntax, the expression
right after the arrow will automatically be returned.

```js
const addTogether = (a, b) => a + b;
// Is the same as
function addTogether(a, b) {
    return a + b;
}

// This is useful when working with things like Array.map()
var materials = [
  'Hydrogen',
  'Helium',
  'Lithium',
  'Beryllium'
];

materials.map((materialName) => materialName.length); // [8, 6, 7, 9]
```

Arrow functions are also very useful when working with `this`.
Since they don't create their own this, you won't lose
`this`'s value.

```js
function Person(){
  this.age = 0;

  setInterval(() => {
    this.age++; // |this| properly refers to the person object
  }, 1000);
}

var p = new Person();
```

### Object Spread Operator
The spread syntax (`myFunction(...iterableObj)`) is pretty old
by now, but a new feature of this syntax is Object Spread.

It allows you to build a regular JavaScript object and assign
its values to the right properties of an other object or
function.

```js
const tooManyParameters = (firstName, lastName, job, gender, age) => {}

const person = {
    firstName: 'John',
    lastName: 'Doe',
    job: 'Consultant',
    gender: 'Male',
    age: 'Old',
}

// Every parameter will be handled by the right key, automatically
tooManyParameters({...person});
```

It's also useful to clone an object:
```js
const object = {foo: 'bar'};
const newObject = {...object};
console.log(object === newObject) // Will be false
```

Or merge them:
```js
const object = {foo: 'bar'};
const otherObject = {bar: 'buz'};
const newObject = {...object, ...otherObject};

// newObject is now {foo: 'bar', bar: 'buz'}
```

This all works for arrays too!

```js
const myArray = [1, 2, 3, 4]
const cloned = [...myArray]
const merged = [...myArray, [5, 6, 7, 8]]
```

### Destructuring
Destructuring allows you to fetch only certain parts of an
array or object and assign them to variables.

```js
const a = {
    foo: 'a',
    bar: 'b',
}
const {bar} = a;
console.log(bar) // Will output 'b'

const b = [3, 4, 5, 6];
const {a, b} = b;
console.log(a) // Will output 3
console.log(b) // Will output 4
```

### Tons of other things
ES6 offers a lot of new features, but those are the ones you will
probably encounter the most. If any example online has some sort of
witchcraft-looking syntax, it's probably just a mix of the above
features. JS devs _love_ saving single kbs in a JS file...