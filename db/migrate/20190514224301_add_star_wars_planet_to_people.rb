class AddStarWarsPlanetToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :star_wars_planet, :string
  end
end
