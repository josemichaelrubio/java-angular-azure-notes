# HTML - Hypertext Markup Language

- a markup language used to design the structure of a webpage
- document with tags describing the elements on the page

### Structure of an HTML page

```html
<!DOCTYPE html>
<html>
  <head>
    <!-- provides metadata for our webpage -->
    <title>My super cool web page</title>
    <meta charset="utf-8" />
    <!-- additional information can be provided as metadata for SEO -->
    <!-- some external resources -->
  </head>
  <body>
    <!-- provides elements to be rendered -->
    <div>
      <h1>Welcome to my page!</h1>
      <p>here's some content in a paragraph</p>
    </div>
    <div>
      <h3>Check out my cool list:</h3>
      <ul>
        <li>First item</li>
        <li>Second item</li>
        <li>Third item</li>
      </ul>
    </div>
    <img
      src="https://curiodyssey.org/wp-content/uploads/bb-plugin/cache/Mammals-Raccoon-square.jpg"
      alt="cute little raccoon"
    />
  </body>
</html>
```

### Elements

- each element is represented by an html tag (either starting+ending tag or a self closing tag)
- elements allow us to provide attributes in the form of key value pairs
  - global attributes are attributes that can be included on any element
    - class, id, hidden, style, dir
  - local attributes are attributes that are specific to a particular element
    - href for an a tag, src for img tag
- each element is either rendered on a block level or an inline level
  - block elements
    - p, h1-h6, div, ol/ul, form, hr, br, table
  - inline elements
    - img, span, strong or b, em or i
- semantic elements are elements which provide additional context to the html on our web page (strong, em, aside, main, etc.)
- current version of HTML is HTML 5
  - graphic/media tags: canvas, audio, video
  - semantic elements: aside, main, header, footer
  - structural elements: meter, progress

# CSS - Cascading Style Sheets

- css allows us to define styling to change how the html elements on our webpage are rendered
- "cascading" refers to the idea that all of our styles and style sheets will be combined, with qualities "cascading" to elements based on rules and their precedence, and the html hierarchy

### Including Styling in our HTML

1. Inline
   - we can give elements a style attribute, with its value being a string representing a css rule
   - `<div style="text-align:center">... some content</div>`
2. Internal
   - we include css rules in `<style>` tag in the head of our html doc
3. External
   - link to an external css using `link` tag in the head of our html doc
   - `<link rel="stylesheet" type="text/css" href="my-styles.css">`

- precedence of a css rule is based on the way it is applied to the page (e.g. inline v external) and the selector used when defining the rule
- inline styling takes precedence over internal/external styles
  - !important with an external/internal rule can take precedence over inline styling
- internal and external scripts are loaded into the browser in the order they are defined, when there are conflicting styling rules, the later rules override previous styles

### CSS Selectors

all elements

```css
* {
  color: red;
}
```

tagname - sets the color of all paragraphs to red

```css
p {
  color: red;
}
```

class name

```css
.blue-par {
  background-color: blue;
}
```

```html
<p class="blue-par">Some text we want to have a blue background</p>
```

id

```css
#submit-button {
  border-radius: 5px;
}
```

```html
<button id="submit-button">Click to Submit!</button>
```

#### Pseudo class selectors

- used to define a special state of an element
- [element]: active
- [element]: checked
- [element]: visited

### Properties and Rules

- background-color: orange;
- color: green;
- font-size: 12;
- border: 6px solid red;
- text-align: center;
- font-family, font-style, font-weight
- padding, margin
- display (inline, block, inline-block)
- list-style-type
- position (static, relative, absolute, fixed, sticky)

### CSS Box Model

- the box model is the idea of thinking each html item is a layered box

<img src="https://www.washington.edu/accesscomputing/webd2/student/unit3/images/boxmodel.gif" alt="box model" />

- content, padding, border, margin
