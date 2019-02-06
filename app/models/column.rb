class Column < ApplicationRecord
    def change
    create_table :columns do |t|
      t.string      :name
      t.text        :text
      t.timestamps null: true
    end
  end
end
