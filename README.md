# lotofacil
The gem to generate lotofacil lottery in Brazil
# Installation
Add in the application file Gemfile:
```ruby
gem 'lotofacil'
```
Execute:

    $ bundle

Or install it yourself as:

    $ gem install lotofacil

## Usage
```ruby
# Generate lottery ticket 15, 16, 17 or 18 numbers
Lotofacil::Raffle.new.generate # => [[3, 4, 8, 9, 11, 12, 13, 14, 17, 18, 19, 20, 22, 24, 25]]
Lotofacil::Raffle.new(15).generate # => [[3, 5, 6, 8, 9, 10, 11, 14, 16, 19, 21, 22, 23, 24, 25]]
Lotofacil::Raffle.new(16).generate # => [[1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 13, 14, 16, 18, 20, 22]]
Lotofacil::Raffle.new(17).generate # => [[1, 3, 4, 5, 6, 7, 8, 10, 13, 16, 17, 18, 19, 22, 23, 24, 25]]
Lotofacil::Raffle.new(18).generate # => [[2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 17, 18, 20, 22, 23, 25]]
Lotofacil::Raffle.new(19).generate # => [[3, 6, 7, 8, 11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24]]

# Generate amount of lottery ticket
Lotofacil::Raffle.new.generate(0) # => []
Lotofacil::Raffle.new.generate(1) # => [[1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 15, 16, 17, 24]]
Lotofacil::Raffle.new.generate(2) # => [[3, 4, 5, 8, 11, 12, 13, 16, 17, 18, 21, 22, 23, 24, 25], [1, 3, 4, 5, 6, 7, 9, 10, 14, 15, 17, 18, 19, 21, 24]]
...

# Complete lottery ticket
Lotofacil::Raffle.new.generate(1,1,2,3) # => [[1, 2, 3, 5, 7, 8, 10, 11, 13, 15, 16, 18, 21, 24, 25]]
Lotofacil::Raffle.new.generate(1,1,2,37,35,36) # => [[1, 2, 3, 4, 5, 6, 7, 10, 12, 13, 14, 17, 21, 24, 25]]
Lotofacil::Raffle.new.generate(1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16) # => [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]]

# Search last draw
Lotofacil.new.last_raffle # => {:date=>"30/11/2015", :number=>"1291", :number_raffle=>["01", "06", "07", "08", "10", "11", "12", "13", "15", "16", "18", "19", "20", "21", "24"]}
```
