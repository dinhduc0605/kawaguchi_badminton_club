class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :note
      t.date :open_date
      t.time :start_time
      t.time :end_time
      t.integer :kind
      t.string :place

      t.timestamps
    end
  end
end
