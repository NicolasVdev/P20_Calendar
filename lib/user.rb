# require 'pry'

class User


  attr_accessor :email, :age
  @@all_users = []


  def initialize(email_to_save, age_to_save)
    @email = email_to_save.to_s
    @age = age_to_save.to_i
    @@all_users << self  
  end


  def self.all
    return @@all_users
  end


  def self.find_by_email(email)
    @@all_users.each do |user|
      if user.email == email
        return "Voici l'age du User trouvé : #{user.age}"
      end
    end
    puts "Cet utilisateur n'existe pas !"
  end


end

# binding.pry