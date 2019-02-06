class Column < ApplicationRecord
    def change
    create_table :columns do |t|
      t.text        :name
      t.text        :text
      t.timestamps null: true
    end
  end
end
