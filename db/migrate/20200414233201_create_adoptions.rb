class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.integer :animal_id
      t.integer :user_id
      t.string :status, :default => "Pending"
      t.text :reason, :default => "Because I love them"

      t.timestamps
    end
  end
end
