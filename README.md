## Porfolio Template ##

#### Author ####

Jessica Engel

### Description ###

Portfolio Template allows people to create a profile for themselves and then include skills and projects that demonstrate those skills. It's great for artists and web developers, or anyone needing a clean and beautiful portfolio to show off to customers, clients, or possible employers.

### Setup ###

clone to your Desktop 


if you want to see an example of what it looks like 


    $cd Desktop/portfolio_template_rails
    $postgres
  
    $rake db:create
    $rake db:migrate
    $rake db:seed 
    $rake db:test:prepare
    $rails s 

Go to "www.localhost/3000"
    
    
if you want to make your own

    $cd Desktop/portfolio_template_rails
    $postgres
  
    $rake db:create
    $rake db:migrate
    $rake db:test:prepare
  
    $rails c 
    $Profile.create({name:"<Your Name>", description:"<About You>", email:"<Your Email>", github:"<Github Link for Developers>, linkedin:"<Your Linked In URL>", image:"<Your Image URL>"}) 
    $rails s

Go to "www.localhost/3000"

### Debugging ###

If there are any bugs contact JessicaEpdx@gmail.com

### License ###
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
