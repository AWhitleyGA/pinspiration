class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.datetime :datetime
      t.references :pin
    end
  end
end
