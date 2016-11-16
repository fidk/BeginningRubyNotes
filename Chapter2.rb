# Practice and notes from Beginning Ruby: From Novice to Professional, Second Edition. Peter Cooper, Apress (2009)

# Chapter 2

# The Making of a Man

class Person
	attr_accessor :name, :age, :gender
end
# class Person
# A class is the definition of a single type of object. 
# Class names always start with a capital letter

# attr_accessor :name, :age, :gender
# Provides three attributes for the Person class 
# attr = attribute
# accessor = make these attributes accessible for set/change

person_instance = Person.new
# this assigns a new instance of the Person class to the variable person_instance

person_instance.name = "Robert"
# now you can maniuplate the new instance of the Person class you created previously by calling upon the variable it is assigned.attribute you want to manipulate

person_instance.age = 52
person_instance.gender = "male"

puts person_instance.name
# puts the name attribute of the person_instance variable (Person class instance)
# puts and print are very similar to each other, except that puts automatically puts the cusrsor on a new line 

puts person_instance.age
puts person_instance.gender

# Basic Variables

x = 10

x * 2

puts x

# From People to Pets

# Inheritance allows different classes to relate to one another and group concepts by their similarities. 

# Structuring Your Pets Logically

class Pet
	attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
end

# The Pet class has name, age, gender, and color attributes. So do the Cat and Dog classes, because the inherited them from the Pet class.
# Attributes in a parent class are inherited by the child class, but are only listed in the parent clss. 
# The following Snake Class also inherits from the Pet class and it has its own unique attribute that only applies to the Snake Class

class Snake < Pet
	attr_accessor :length
end

snake = Snake.new
snake.name = "Sammy"
snake.length = 500
lassie = Dog.new
lassie.name = "Lassie"
lassie.age = 20
# lassie.length = 10
# If this line were to run: 
#			NoMethodError: undefined method 'length=' for #<Dog:0x32fddc @age=20, @name="Lassie>


# Controlling Your Pets

# Methods make objects perform actions. 

class Dog2 < Pet
	def bark
		puts "Woof!"
	end
end

#After entering this, any dog can bark

a_dog = Dog.new
a_dog.bark

#Everything is an Object

#Determine in Ruby what an object class is:
puts snake.class
# The class name Pet will output

# Kernel Methods

# Kernel is a special class (module) whose methods are made available in every class and scope throughout Ruby
# The default class, if you will

# You can explicitly use the Kernel class, but it is rarely necessary
Kernel.puts "Hello World!"

# Passing Data to Methods

# You can follow a method call directly with the data associated with that method (shortcut), but that is cumbersome when using multiple methods tied together
# To make the relationship between the method and the data entirely clear is to surround the data in parenthesis. 

Kernel.puts("Hello World!")
# This line functions identically with
Kernel.puts "Hello World!"
# Only the first line is clearer (when multiple parameters are passed to an object

# Using Methods in the String Class

puts "This is a test".length
# Output: 14
# returns the length of the string value (including all whitespaces)

puts "This is a test".upcase
# Output: THIS IS A TEST
# returns the string as entered, but all characters are uppercase

puts "test" + "test"
#Output: testtest
# returns the two strings as one single string (concantenate) 

puts "test".capitalize
# Output: Test
# returns the string with the first word capitalize

puts "TEST".downcase
# Output: test
# returns the string as entered, but al characters are lowercase

puts "test".chop
# Output: tes
# returns the string with the last character "chopped" off the end

puts "test".next
# Output: tesu
# returns the string with the last character changed to the alpha character following the original last character (ie T becomes U, because alphabeticaly U follow T)

puts "test".reverse
# Output: tset
# Reverses the strings then outputs

# Using Ruby without Object Orientation

# Summary

# Class: A class is a definition of a concept in an onject oriented language.
# Object: An object is a single instance of a class
# A class is the classification, whereas an object is the actual "thing" itself.
# Object Orientation: is the approach of using classes and objects to model real-world concepts in a programming language
# Variable: a variable is a palceholder for a single object, which may be an object or an instance of a class you have defined
# Method: A method represents a set of code (containing multiple commands and statements) within a class and/or an object. 
# Methods can accept data (arguments/parameters) included in parentheses after the method name.
# Arguments/Parameters: These are the data passed to methods in parantheses. 
# Technicaly you pass arguments to methods and methods receive parameters
# Kernel: Built-in class that contains built-in, common methods taht don't have an obvious connection to any classes. Implicitly referred to

