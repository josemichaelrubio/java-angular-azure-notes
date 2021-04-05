# [Node](https://nodejs.org/en/download/) 
- runtime environment for js
- comes with npm, node package manager
- helpful for downloading managed software packages
> npm install [package]
- package.json
> npm install 
  - in that file location will install all of the packages in that file 
  - npm registry

# Angular
- (get set up with angular)[https://angular.io/guide/setup-local]
### Pros of Angular
- Single Page Application (Front load)
- Organziation/Modularization
- Powerful directives and databinding
- Angular CLI 
  - ng new my-app
  > cd my-app
  - ng generate component/pipe/service
  - ng serve
- uses TypeScript:
  - allows for compile time type checking
  - transpiles to javascript to be run in your browser

##### Components and SPA
- have all of our views loaded up
- instead of changing the pages, we'll be on the same page, we just swap out modularized pieces of our web page (component = view + functionality)
- index.html 

# Angular Architecture
- modules
    - containers for a cohesive block of code dedicated to an application domain
    - you will have 1 or more module in an angular app
    - by default you will have one, "AppModule" generated
    - contain:
        - declarations
          - pipes
          - components         
        - imports
          - any external modules
        - providers
          - services
        - bootstrap 
            - the process in which components in the bootstrap array are created and inserted into the browser dom
            - each bootstrapped component is the base of its own tree of components
- components
- pipes
- services


Path:
- starts in main.ts where we bootstrap our main module (AppModule)
  - we declare main module
- in that module we declare all of components/pipes/services etc. associated with it, along with all of 
  - also declare our bootstrap component; this is where 


#### Webpack
- webpack is a bundling tool which is used to bundle all of the resources in an angular application
- bundles into several "chunks" which are then injected into index.html 

# Decorator 
- a function that takes a single metadata object
```typescript
@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
```


```typescript
@Component({
    selector: 'app-first',
    template: '<p>Hello World</p>',
    //styles: []
    styleUrls: ['./first.component.css']
})
```

```typescript
@Injectable({
  providedIn: 'root',
})
```

```typescript
@Pipe({
    name: 'FirstCap'
})
```
# Components
1. class
2. template
3. metadata

``` typescript
@Component({
  selector: 'app-a-directives',
  template: '<p> hello world </p>',
  styleUrls: ['./a-directives.component.css']
})
export class ADirectivesComponent {
}
```


# Data binding

### One way 
- String interpolation {{}}
  - string interpolation: same idea as injecting variables into a template literal, we can inject typescript variables into our template
- Property binding [property]='variable'
- Event binding (event)='expression'
  - respond to any DOM event 
    - click
    - focus
    - blur 
    - submit
    - keypress

### Two way
- attach custom behavior to elements in the DOM
- ngModel -> another example of a directive
- [(ngModel)]

# Directives
- attach custom behavior to elements in the DOM

1. components - directives with a template
2. structural directives - change the dom layout by adding/removing elements 
3. attribute directives - change the appearance or behavior or an element

### Structural Directives
- ngFor
``` html
<ul>
  <li *ngFor='let course of courses'>{{course.id}}: {{course.name}}</li>
</ul>
```


- ngIf
```html 
<div *ngIf='condition'>Condition is met</div>
<div *ngIf='!condition'>Condition is not met</div>
<button (click)='changeCondition()' class='btn btn-danger'>Change Condition</button>
```

- ngSwitch
```html
<div [ngSwitch]='time'>
  <span *ngSwitchCase="'night'">It's night time
    <button class="btn btn-primary" (click)='changeDay()'>Change to Day</button>
  </span>
  <span *ngSwitchCase="'day'">It's day time
    <button class="btn btn-dark" (click)='changeNight()'>Change to night</button>
  </span>
  <span *ngSwitchDefault>It's ? time
    <button class="btn btn-primary" (click)='changeDay()'>Change to Day</button>
    <button class="btn btn-secondary" (click)='changeNight()'>Change to Night</button>
  </span>
</div>
```

### Attribute Directives
- ngStyle, ngClass


# Pipes
``` TypeScript
@Pipe({
  name: 'PipeName'
})
export class PipeNamePipe implements PipeTransform{

  transform(value: string): string {
        let wordArr: string[] = value.split(' ');
        for(let i in wordArr){
            wordArr[i] = wordArr[i].charAt(0).toUpperCase() + wordArr[i].substring(1);
        }
        return wordArr.join(' ');
    }
}

```

- implements PipeTransform
- takes in a string and returns a string


# Services
- cross cutting concerns
- functionality you want to be accessible to components
### Dependency injection 
- when we use services, we just provide what service we need
- Angular injector handles the instantiation of 

# HTTP
- HttpClientModule -> HttpClient
- HttpClient service gives us a method for every http verb that we can just provide url, and url and payload

# Promises vs Observables
- provide support for asynchronous events

## Promise -> proxy for a value that's not necessarily known when called
- not lazy, it executes wether .then or .catch are invoked
- emit only a single value at a time
- not possible to be cancelled
- feature of ES6 

## Observable -> publisher which emits 0 to many items when subscribed to 
- emits multiple values over a period of time
- lazy, will not execute unless subscribed to
- provides certain operators to process incoming stream of data (forEach, filter, etc.)
- can be cancelled using the unsubscribe method or retried
- not innately available in angular
- provided by RxJS (Reactive Extensions for JavaScript)

# Routing 
ng generate module app-routing --flat --module-app
-> creates a new module for routing
- Create AppRoutingModule
- in AppRoutingModule import RouterModule.forRoot(routes) and export RouterModule
- routes is an array where we list a route and a components which correspond to eachother
  - "path" and "component"
- AppRoutingModule in imports
- ``` <router-outlet> ```
- ``` <a routerLink="/path"> Click me</a>```

# Versions of Angular
1. AngularJS
  - mvc architecture
  - uses js 
  - doesn't need
2. Angular = Angular 2+
  - component based architecture (each component can be considered to be MVC)