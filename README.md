# School Library OOP

Imagine that you are the librarian of OOP University, and you need a tool to record what books are in the library and who borrows them. The app will allow you to:

- Add new students or teachers.
- Add new books.
- Save records of who borrowed a given book and when.

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

```
Ruby
```

### Setup

Open terminal and go to the folder you want to store the repo in:

```
# For example
cd Documents
```

Clone the repo and move to the folder with the repo:

```
git clone git@github.com:akucintavalent/school-library-oop.git
cd school-library-oop
```

### Run Program

In order to run any of the ruby files you should run in your terminal:

```
ruby <name-of-the-file>.rb
```

If you want to test one of the files in ruby interpreter, run:

```
irb
```

Then you will be able to import files and test their contents:

```
require './teacher.rb'
t = Teacher.new(33, 'Aniela Szczerbak', false, 'Mathematics')
t.can_use_services?
t.validate_name
require './student.rb'
s = Student.new(12, 'Konrad Kowalski', false, 'Math')
s.play_hooky
s.can_use_services?
# require './corrector.rb'
c = Corrector.new
c.correct_name('Ababa Halamaga')
```

Result of running the above code:

```
ibodi@MacBook-Pro-Bohdan school-library-oop % irb

WARNING: This version of ruby is included in macOS for compatibility with legacy software. 
In future versions of macOS the ruby runtime will not be available by 
default, and may require you to install an additional package.

irb(main):001:0> require './teacher.rb'
=> true
irb(main):002:0> t = Teacher.new(33, 'Aniela Szczerbak', false, 'Mathematics')
=> #<Teacher:0x00007fd7a4968768 @id=1, @name="Aniela Szczerbak", @age=33, @parent_permission=false, @corrector=#<Corrector:0x00007fd7a4968740>, @specialization="Mathematics">
irb(main):003:0> t.can_use_services?
=> true
irb(main):004:0> t.validate_name
=> "Aniela Szc"
irb(main):005:0> require './student.rb'
s = Student.new(12, 'Konrad Kowalski', false, 'Math')
s.=> true
irb(main):006:0> s = Student.new(12, 'Konrad Kowalski', false, 'Math')
=> #<Student:0x00007fd7a4979f68 @id=1, @name="Konrad Kowalski", @age=12, @parent_permission=false, @corrector=#<Corrector:0x00007fd7a4979f40>, @classroom="Math">
irb(main):007:0> s.play_hooky
=> "¯(ツ)/¯"
irb(main):008:0> s.can_use_services?
=> false
# require './corrector.rb'
c = Corrector.new
c.correct_name('Ababa Hairb(main):009:0> # require './corrector.rb'
=> nil
irb(main):010:0> c = Corrector.new
=> #<Corrector:0x00007fd7a60481e0>
irb(main):011:0> c.correct_name('Ababa Halamaga')
=> "Ababa Hala"
irb(main):012:0> 
```

## Authors

👤 **Bohdan Shcherbak**

- [GitHub](https://github.com/akucintavalent)
- [Twitter](https://twitter.com/ibodi828)
- [LinkedIn](https://www.linkedin.com/in/bohdan-shcherbak/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/AmaduKamara/ruby-enumerabble/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
