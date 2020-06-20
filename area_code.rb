dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }
   
  # Get city names from the hash
  def get_city_names(somehash)
    puts somehash.keys
  end
   
  # Get area code based on given hash and key
  def get_area_code(somehash, key)
    somehash[key]
  end
   
  # Execution flow
  loop do
    puts get_city_names(dial_book)
    print "Which city do you want the area code for? "
    response = gets.chomp
    if dial_book.include?(response)
        puts "The area code for #{response} is #{get_area_code(dial_book, response)}"
    else
      puts "You entered a city name not in the dictionary"
    end
    print "Do you want to look up another city? (Y,N) "
    input = gets.chomp.upcase
    break if input == 'N'
  end

  