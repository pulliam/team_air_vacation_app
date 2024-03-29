class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.references :guest, references: :users
      t.references :listing
      t.timestamps null: false
    end
  end
end
