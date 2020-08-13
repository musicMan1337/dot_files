# VScode__User__Snippets
### JSON Snippets for use with various languages in VScode

###### *Will periodically update with new snippets I add, and any useful bits of info I gleen from the creation of snippets within the syntax of VScode JSON files.*


## Quickly format large chunks of code for use within the JSON syntax:
>1. Normally, outside of the JSON file, select all (ctrl+A) and press (Shift+Alt+I)
>to select the last space on every line of code. Insert ", followed by the (Home)
>button twice (to select the first space of every line), and insert "

## A note on escape characters:
>1. For Sass, I wanted to create snippets with the $ character, but within the
>JSON syntax it registers as a pointer followed by placeholder text. A normal
>escape (\\) won't work, instead you have to do this: \\\\$
>2. If you highlight a single $ and press (Ctrl+F), within the searchbox, click
>the .* icon (Use Regular Expression) and press the tiny ">" to the left of the
>search field. In the next field, type \\\\$ and selct the (Replace All) button.
>     * ***The functionality of the search bar is pretty neat, and I'd highly recommend further reading on it.***

## Themes and Fluid Element Sizing:
####       I've adapted code written by **Indrek Paas https://gist.github.com/indrekpaas**
