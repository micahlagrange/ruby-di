# ruby-di
Dependency injection in ruby

To demonstrate that this works:
  - put a new file containing a class that has a method `out` into the classes directory
  - run `ruby test.rb name-of-your-new-class`
 
It will:
  - Require your new file, thereby putting your class into the scope
  - It will camelize to `NameOfYourNewClass`
  - It will instantiate it, and call its `out` method
  
The script will fall back to BaseExample ( see `classes/base_example.rb`) if your class name doesn't match one that exists
