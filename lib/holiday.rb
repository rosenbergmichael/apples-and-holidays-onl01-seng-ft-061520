require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array


 holiday_supplies[:summer][:fourth_of_july][1]
 end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays


holiday_supplies[:winter][:christmas] << supply
holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end




def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end




def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].to_s
end




def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, holiday|
     puts "#{season.capitalize}:"
     holiday.each do |holiday, supply|
       puts "  #{holiday.to_s.split("_").map {|x| x.capitalize}.join(" ")}: #{supply.join(", ")}"
     end
  end 
end


#* Look closely at the output string that the test is expecting. You'll notice that it expects holiday names, like "New Years", to have both words capitalized. Ruby has a `.capitalize` method that you can call on a string. **But, note:**
#    * `.capitalize` returns the capitalized string but *doesn't change* the original string. So, when you call on that same string in the future, it *isn't capitalized!* You can capitalize a string for now and evermore by using the bang operator (`!`).
#    * You'll need to capitalize *both words* in a given holiday's name. If you call `"new years".capitalize!`, it will return `"New years"`. In order to capitalize *both* words, you'll need to `.split` the string into an array and iterate over that array to `.capitalize!` each word in it. Then, you'll need to `.join` the array back into a string.




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.each do |season, holiday, supply|
  binding.pry
  end
end 







