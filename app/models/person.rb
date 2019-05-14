class Person < ApplicationRecord
    # Validations
    validates :age, numericality: true
    #validates :first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive, presence: true


    # Class Method
    def self.by_first_name
        order(:first_name)                      #would normally do Contact.order() but because self. dont need it
    end

    # Instance Method
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
