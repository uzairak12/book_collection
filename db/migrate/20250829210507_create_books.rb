class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      #t.string :author
      #t.decimal :price, precision: 6, scale: 2
      #t.date :date_published

      t.timestamps
    end
  end
end
