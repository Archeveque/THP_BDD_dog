class CreateDogsitters < ActiveRecord::Migration[7.0]
  def change
    create_table :dogsitters do |t|
      t.belongs_to :city
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
