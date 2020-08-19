class Person
  #Question 3: Class Person có 1 class variable là count.
  @@count = 0;


  #Question 2: Khi khởi tạo 1 Person có thể truyền 'name' và 'age'
  def initialize(name, age)
    @name = name
    @age = age
    #Question 17: Viết 1 instance method bất kì, raise Exception (với message bất kì) trong method đó, sau đó catch exception và in ra message của Exception đó.
    if name == nil or name.size == 0
      raise ArgumentError.new('Everyone must have a name!')
    elsif age < 0
      raise ArgumentError.new('Age can not be less than zero!')
    end
    #Question 4: Mỗi lần khởi tạo 1 Person thì biến count sẽ tăng lên 1.
    @@count += 1
  end

  #Question 1: Mỗi Person có 2 instance variable là 'name' và 'age'. Tạo setter và getter cho 'name' và 'age'
  def get_name()
    return @name
  end

  def get_age()
    return @age
  end

  def set_name(newName)
    @name = newName
  end

  def set_age(newAge)
    @age = newAge
  end

  def increase_age()
    @age = @age + 1
  end

  #Question 6: Person có 1 class method tên là 'total_count' sẽ in ra kết quả là: "Total number of people is [tổng số Person đã được tạo]"
  def total_count()
    puts"Total number of people is #@@count"
  end

  #Question 5: Person có 1 instane method tên là 'introduce' sẽ in ra kết quả là: "My name is [name của person đó]. I'm [age của person đó] years old".
  def introduce()
    puts"My name is #@name. I'm #@age years old"
  end
end


  #Question 7: Dùng hàm 'times' tạo 1 mảng 'people' gồm 20 person với name là 'Person 1' cho đến 'Person 20', age của mỗi Person random từ 10 -> 90
  people = Array.new()
  20.times { |n| people << Person.new("Person #{n+1}", rand(10..90))}
  20.times { |n| people[n].introduce() }
  puts "____________________________________________"
  puts "____________________________________________"

  #Question 14: Dùng CÁC vòng lặp trong Ruby và CÁC hàm (khả thi) của Array để tăng tuổi của từng Person trong mảng 'people' lên 1.
  #Solution 1:
  puts "After increase age: "
  puts "Solution 1: Using method"
  20.times { |n| people[n].increase_age() }
  20.times { |n| people[n].introduce() }
  puts "--------------------------------------------"

  #Solution 2:
  puts "Solution 2: Using While loop"
  $increase = 0
  while $increase < 20 do
    temp = people[$increase].get_age() + 1
    people[$increase].set_age(temp)
    people[$increase].introduce()
    $increase += 1
  end
  puts "--------------------------------------------"

  #Solution 3:
  puts "Solution 3: Using Until loop"
  $increase = 0
  until $increase == 20 do
    temp = people[$increase].get_age() + 1
    people[$increase].set_age(temp)
    people[$increase].introduce()
    $increase += 1
  end
  puts "--------------------------------------------"

  #Solution 4:
  puts "Solution 4: Using For loop"
  $increase = 0
  for $increase in 0..19
    temp = people[$increase].get_age() + 1
    people[$increase].set_age(temp)
    people[$increase].introduce()
    $increase += 1
  end
  puts "--------------------------------------------"

  #Solution 5:
  puts "Solution 5: Using each"
  people.each {|n| n.set_age(n.get_age() +1 )}
  people.length.times { |n| people[n].introduce() }
  puts "--------------------------------------------"


  #Solution 6:
  puts "Solution 6: Using collect"
  people.collect {|n| n.set_age(n.get_age() +1 )}
  people.length.times { |n| people[n].introduce() }
  puts "--------------------------------------------"

  #Solution 7:
  puts "Solution 7: Using map"
  people.each {|n| n.set_age(n.get_age() +1 )}
  people.length.times { |n| people[n].introduce() }
  puts "--------------------------------------------"

  #Solution 8:
  puts "Solution 8: Using select"
  people.select {|n| n.set_age(n.get_age() +1 )}
  people.length.times { |n| people[n].introduce() }
  puts "--------------------------------------------"

  puts "____________________________________________"
  puts "____________________________________________"
  
  #Question 10: Sort mảng 'people' theo tuổi tăng dần.
  puts "After sort by age ascendencely:"
  people.sort!{|a, b| a.get_age() <=> b.get_age()}
  people.length.times { |n| people[n].introduce() }
  puts "____________________________________________"
  puts "____________________________________________"

  #Question 13: Xem phần module enumerable của Ruby: https://ruby-doc.org/core-2.5.1/Enumerable.html (Array và Hash trong Ruby có include module này) để tìm ra Person lớn tuổi nhất, Person nhỏ tuổi nhất.
  puts "The oldest person: "
  oldest_one = people.max { |a, b| a.get_age() <=> b.get_age() }
  oldest_one.introduce()
  puts "____________________________________________"
  puts "____________________________________________"

  puts "The youngest person: "
  youngest_one = people.min { |a, b| a.get_age() <=> b.get_age() }
  youngest_one.introduce()
  puts "____________________________________________"
  puts "____________________________________________"


  #Question 11: Sort mảng 'people' theo tuổi giảm dần.
  puts "After sort by age descendencely:"
  people.sort!{|a, b| b.get_age() <=> a.get_age()}
  people.length.times { |n| people[n].introduce() }
  puts "____________________________________________"
  puts "____________________________________________"

  #Question 8: Với mảng 'people' lọc ra những Person có tuổi nhỏ hơn 18
  puts "People younger than 18: "
  20.times { |n| if people[n].get_age() < 18 then people[n].introduce() end}
  puts "____________________________________________"
  puts "____________________________________________"

  #Question 9: Với mảng 'people' xóa những Person có tuổi nhỏ hơn 18
  puts "After delete people younger than 18: "
  people.delete_if{|n| n.get_age() < 18 }
  people.length.times { |n| people[n].introduce() }
  puts "____________________________________________"
  puts "____________________________________________"

  #Question 12: Delete 1 phần tử ở vị trí xác định trong mảng 'people'
  puts "Enter index to be deleted:"
  i = gets
  people.delete_at(i.to_i)
  puts "Data at index #{i.to_s} ////////////// line number #{i.to_i + 1} deleted"
  people.length.times { |n| people[n].introduce() }
  puts "____________________________________________"
  puts "____________________________________________"

  #Question 15: Không dùng vòng lặp (dùng CÁC hàm của Array) lấy ra tất cả các 'age' của các Person trong mảng 'person'
  puts "All the age of each person: "

  age = people.collect { |n| n.get_age() }
  puts "Method 1: Using collect #{age}"

  age = Array.new()
  people.select { |n| age << n.get_age() }
  puts "Method 2: Using select #{age}"

  age = Array.new()
  people.each { |n| age << n.get_age() }
  puts "Method 3: Using each #{age}"

  age1 = people.map { |n| n.get_age() }
  puts "Method 4: Using map #{age1}"


  puts "____________________________________________"
  puts "____________________________________________"

  #Question 16: Tạo 1 mảng 'people_2' tương tự câu 7, nối mảng 'people_2' vào 'people'
  people_2 = Array.new()
  20.times { |n| people_2 << Person.new("Person #{n+21}", rand(10..90))}

  puts "Current people array: "
  people.length.times { |n| people[n].introduce() }
  puts "Lenght of people: #{people.length()}"
  puts "--------------------------------------------"

  puts "Current people_2 array: "
  people.length.times { |n| people[n].introduce() }
  puts "Lenght of people_2: #{people_2.length()}"
  puts "--------------------------------------------"

  puts "Concating..."
  people.concat people_2

  puts "New people array: "
  people.length.times { |n| people[n].introduce() }
  puts "Total lenght of new people after concat: #{people.length()}"

  puts "____________________________________________"
  puts "____________________________________________"


  # puts "Test Question 17 HERE: "
  # persona= Person.new("aa", -20)

# persona= Person.new("a", 20)
# persona.introduce
# personb= Person.new("b", 25)
# personb.introduce
# personc= Person.new("c", 30)
# personc.introduce
