class AddImgToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :img, :string, default: "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  end
end
