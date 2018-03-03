# ruby-di
Dependency injection in ruby

To demonstrate that this works:
  - put a new file containing a class that has a method `out` into the classes directory
`classes/tesb.rb`
```
class TheEmpireStrikesBack
  def out
    'i am your father'
  end
end
```
  - run `ruby test.rb name-of-your-new-class`
   
It will:
  - Require your new file, thereby putting your class into the scope
  - It will camelize to `NameOfYourNewClass`
  - It will instantiate it, and call its `out` method
```
$ ruby test.rb the-empire-strikes-back
The empire did nothing wrong
```
  
The script will fall back to BaseExample ( see `classes/base_example.rb`) if your class name doesn't match one that exists

```
$ ruby test.rb a-nonexisting-class
where is the rebel base
```
