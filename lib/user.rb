class User
    attr_accessor :email,:age  # Donne accès à la variable d'instance  attr_accessor en lecture ET en écriture 
    @@all_users = []  # autre façon d'écrire   array.new 

    def initialize(email_to_save , age_they_have ) #exécute du code en même temps que la création d'une instance
        @email = email_to_save #variable d'instance de type string
        @age = age_they_have #variable d'instance de type Integer 
        @@all_users  << self 
    end 

    def self.all 
        return @@all_users
    end

    def self.find_by_email(email)
        @@all_users.each do |user|

            if user.email == email
                return user 
            end 
    end

end