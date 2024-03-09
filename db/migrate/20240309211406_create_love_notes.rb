class CreateLoveNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :love_notes do |t|
      t.string :title
      t.text :message
      t.date :date

      t.timestamps
    end
  end
end
