class LotrController < ApplicationController
    def index
        @lotr = Person.where(last_name: "LOTR") #.order(first_name:)
    end

    def show
        @lotr = Person.where(last_name: "LOTR") #.order(first_name:)
    end

end
