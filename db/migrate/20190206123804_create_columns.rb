class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.text       :name
      t.text        :image
      t.timestamps null: true
     end
  end
end