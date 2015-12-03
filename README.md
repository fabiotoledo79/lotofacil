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
Lotofacil.new.generate # => [[3, 4, 8, 9, 11, 12, 13, 14, 17, 18, 19, 20, 22, 24, 25]]
Lotofacil.new.generate(0) # => []
Lotofacil.new.generate(1) # => [[1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 15, 16, 17, 24]]
Lotofacil.new.generate(2) # => [[3, 4, 5, 8, 11, 12, 13, 16, 17, 18, 21, 22, 23, 24, 25], [1, 3, 4, 5, 6, 7, 9, 10, 14, 15, 17, 18, 19, 21, 24]]
...
Lotofacil.new.last_raffle # => {:date=>"30/11/2015", :number=>"1291", :number_raffle=>["01", "06", "07", "08", "10", "11", "12", "13", "15", "16", "18", "19", "20", "21", "24"]}
```
