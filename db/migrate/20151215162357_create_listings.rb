class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :photo_url
      t.string :price
      t.string :description
      t.string :availability
      t.references :neighborhood
      t.references :host, references: :users
      t.timestamps null: false
    end
  end
end
