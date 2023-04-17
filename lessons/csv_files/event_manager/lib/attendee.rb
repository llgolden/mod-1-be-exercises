class Attendee
  attr_reader :id, :first_name, :last_name, :zipcode

  def initialize (id, first_name, last_name, zipcode)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @zipcode = clean_zip(zipcode)
  end

  def name
    @first_name + " " + @last_name
  end
  
  def display
    @id.to_s + ": " + name + ", " + clean_zip(zipcode)
  end

  def clean_zip(zipcode)
    if zipcode == nil
      zipcode = "00000"
    elsif zipcode.length < 5
      zipcode = zipcode.rjust 5, "0"
    elsif zipcode.length > 5
      zipcode = zipcode[0..4]
    else
      zipcode
    end
  end

end


#   1. `clean_zip`: ensures the ZIP code is a five-digit number; e.g. `12345`. A ZIP code that is:

#   * longer than five digits should be truncated to five digits; e.g. `'1234567'` -> `'12345'`
#   * shorter than five digits should be prepended with leading zeroes; e.g. `'123'` -> `'00123'`
#   * missing or non-existent ZIP code should be replaced with a default value; e.g. `nil` -> `'00000'`