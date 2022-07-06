class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.references :event
      t.string :name

      t.timestamps
    end
  end
end
