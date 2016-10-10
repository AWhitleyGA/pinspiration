class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.string :title
      t.datetime :datetime
      t.text :image_url
      t.references :board
    end
  end
end
