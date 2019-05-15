class AddPlanetToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :planet, :string
  end
end
