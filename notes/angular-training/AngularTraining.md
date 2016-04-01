# Angular Training 12/7/15 through 12/11/15

## Prototypical Inheritance

In JavaScript, an object (A) that is prototypically inherited from another (B) has a **live prototypical relationship** with B. This is different from other languages where inheritance happens with classes, not live objects.

## Function Scope in JavaScript

It's similar to prototype inheritance

## Watches

$scope.watchCollection --> Like $scope.watch but will detect updates to Arrays (`watch` won't do that)

## Directives

### Directive Registration Function

Can return:

 - A function. (Is post-link function.)
 - A **Directive Definition Object** with a `link` property. (For post-link)
 - A **Directive Definition Object** with a `compile` property that returns a function. (Is post-link function.)
 - A **Directive Definition Object** with a `compile` property that returns an object with `pre` and `post` properties. (Pre- and post-link functions.)
`link` is post-link. It can be set up by returning a function in the directive factory function.

## Transclusion

### How to enable Transclusion

Add `transclude: true` to directive options. (Or `transclude: 'element'` to transclude the element itself.)

### 2 ways to do it:

#### ng-transclude

Your template should have a `<div ng-transclude></div>` somewhere in it. (It will just transclude the content there.)

#### Transclude function

In /post-link:

```
link: function(scope, element, attrs, ctrl, transclude) {
  transclude(function(clone) {
    element.append(clone);
  });
}
```

## $compile service

In post-link function:

```
var linkingFunction = $compile(templateString);
var domElements = linkingFunction(scope);
element.append(domElements);
```

## Practical Experience is Overrated

Practical (job) experience can only get you so far. When you're doing day to day work, you only learn what you need to know to get the job done. It's helpful to step back and look at things academically. This is true of security stuff -- developers say they care about security, but often they don't understand this stuff.

## Isolated Scope

`@` - one way data binding
`=` - two way data binding

## `this` in JavaScript

```
function myFunc() {
  console.log(this);
}

myFunc();
```

^^^ `this` will point to the `window` object.

Add a `'use strict';` above the function definition, and `this` will be `undefined`

`this` is set to the context from which is invoked:

```
var foo = function() {console.log(this)};
var bar = {foo: foo};

foo(); // this === window
bar.foo(); // this === bar;
```

## Directive Communication

i.e. Directive `require` option

## Directive Priority

If an HTML element has multiple directives it will process them in the alphabetical order of their name. You can set an option of `priority` on a Directive Definition Object, and it will instead start with directives with the highest priority.

You can also set a `terminal` option to `true` on the Directive Definition Object, and after that given directive is processed it will *stop* processing other directives on the same elements.

## Attrs tricks

(In `link`)
```
attrs.$addClass('bold');
attrs.$removeClass('bold');
attrs.$normalize('some-dashed-string'); // 'someDashedString'

attrs.$observe('attrName', function(value) {
  // Do something with the value
});
```

`$observe` is like `$watch`. Except, it's more lean/performant. And you don't get to see the old value.
`$observe` is only available in directives.

## Angular and MVC

Angular loosely follows MVC.

Traditional MVC:

                C
  Controller  /   \      Controller is passed model
  passes --> /     \ <-- (or gets model) and
  data to   /       \    extracts information to pass to view
  view     /         \
          V           M

Angular's MVC:

       C
        \
         \ <-- Controller is passed model ($scope), and then modifies it
          \
 V ------- M
      ^
      |
  Model and view are synced

## Services in Angular

### Three ways to create a service

1. `service` method
2. `factory` method
3. `provider` method

## Testing

You want to test all outputs of a unit:
 - Direct outputs (those returned by public methods)
 - Indirect outputs (those passed inward to dependencies)
