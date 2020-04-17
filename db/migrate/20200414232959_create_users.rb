class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :age
      t.string :address
      t.integer :pet_qty, :default => 0
      t.text :bio, :default => "I love animals"
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
