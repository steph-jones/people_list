class AddHogwartsHouseToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :hogwarts_house, :string
  end
end
