# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

# contents = File.read "event_attendees.csv"
# puts contents

# File.exist? "event_attendees.csv"

# lines = File.readlines "event_attendees.csv"
# lines.each_with_index do |line, index|
#   next if index == 0 
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row| 
#   name = row[:first_name]
#   puts name
# end

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row| 
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   if zipcode.nil?
#     zipcode = "00000"
#   elsif zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4]
#   end

#   puts "#{name} #{zipcode}"
# end

# def clean_zipcode(zipcode)
#   if zipcode.nil?
#     zipcode = "00000"
#   elsif zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4]
#   else 
#     zipcode
#   end
# end

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row| 
#   name = row[:first_name]
#   zipcode = clean_zipcode(row[:zipcode])
#   puts "#{name} #{zipcode}"
# end

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row| 
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end