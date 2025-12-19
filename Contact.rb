class Contact
  attr_accessor :name, :phone, :email
  
  def initialize(name, phone, email)
    @name = name
    @phone = phone
    @email = email
  end
  
  def display_info
    "Name: #{@name}, Phone: #{@phone}, Email: #{@email}"
  end
end 