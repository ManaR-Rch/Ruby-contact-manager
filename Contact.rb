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

contacts = []

def add_contact(contacts_array)
  puts "\nAdd CONTACT"
  
  print "Entrez le nom : "
  name = gets.chomp
  
  print "Entrez le numero de telephone : "
  phone = gets.chomp
  
  print "Entrez l'email : "
  email = gets.chomp
  
  # if name.empty? || phone.empty? || email.empty?
  #   puts "erreur: Tous les champs doivent etre remplis"
  #   return
  # end
  
  new_contact = Contact.new(name, phone, email)
  contacts_array << new_contact
  
  puts "contact ajoute"
end

def list_contacts(contacts_array)
  puts "\nLISTE DES CONTACTS"
  
  if contacts_array.empty?
    puts "Aucun contact dans la liste."
  else
    numero = 1
    contacts_array.each do |contact|
      puts "#{numero}. #{contact.display_info}"
      numero += 1
    end
  end
end

def find_contact(contacts_array)
  puts "\nRECHERCHER UN CONTACT"
  
  if contacts_array.empty?
    puts "La liste est vide."
    return
  end
  
  print "Entrez le nom a rechercher : "
  search_name = gets.chomp
  
  found = false
  
  contacts_array.each do |contact|
    if contact.name == search_name
      puts "Contact trouve : #{contact.display_info}"
      found = true
    end
  end
  
  if !found
    puts "Contact non trouve."
  end
end

def show_menu
  puts "\n--- MENU ---"
  puts "1. Ajouter un contact"
  puts "2. Lister tous les contacts"
  puts "3. Rechercher un contact"
  puts "4. Quitter"
  print "Votre choix : "
  gets.chomp
end


puts "GESTIONNAIRE DE CONTACTS"

running = true

while running
  choice = show_menu
  
  if choice == "1"
    add_contact(contacts)
  elsif choice == "2"
    list_contacts(contacts)
  elsif choice == "3"
    find_contact(contacts)
  elsif choice == "4"
    puts "Au revoir!"
    running = false
  else
    puts "Choix invalide. Entrez 1, 2, 3 ou 4."
  end
end
contacts = []

def add_contact(contacts_array)
  puts "\nAdd CONTACT"
  
  print "Entrez le nom : "
  name = gets.chomp
  
  print "Entrez le numero de telephone : "
  phone = gets.chomp
  
  print "Entrez l'email : "
  email = gets.chomp
  
  # if name.empty? || phone.empty? || email.empty?
  #   puts "erreur: Tous les champs doivent etre remplis"
  #   return
  # end
  
  new_contact = Contact.new(name, phone, email)
  contacts_array << new_contact
  
  puts "contact ajoute"
end

def list_contacts(contacts_array)
  puts "\nLISTE DES CONTACTS"
  
  if contacts_array.empty?
    puts "Aucun contact dans la liste."
  else
    numero = 1
    contacts_array.each do |contact|
      puts "#{numero}. #{contact.display_info}"
      numero += 1
    end
  end
end

def find_contact(contacts_array)
  puts "\nRECHERCHER UN CONTACT"
  
  if contacts_array.empty?
    puts "La liste est vide."
    return
  end
  
  print "Entrez le nom a rechercher : "
  search_name = gets.chomp
  
  found = false
  
  contacts_array.each do |contact|
    if contact.name == search_name
      puts "Contact trouve : #{contact.display_info}"
      found = true
    end
  end
  
  if !found
    puts "Contact non trouve."
  end
end

def show_menu
  puts "\n--- MENU ---"
  puts "1. Ajouter un contact"
  puts "2. Lister tous les contacts"
  puts "3. Rechercher un contact"
  puts "4. Quitter"
  print "Votre choix : "
  gets.chomp
end


puts "GESTIONNAIRE DE CONTACTS"

running = true

while running
  choice = show_menu
  
  if choice == "1"
    add_contact(contacts)
  elsif choice == "2"
    list_contacts(contacts)
  elsif choice == "3"
    find_contact(contacts)
  elsif choice == "4"
    puts "Au revoir!"
    running = false
  else
    puts "Choix invalide. Entrez 1, 2, 3 ou 4."
  end
end