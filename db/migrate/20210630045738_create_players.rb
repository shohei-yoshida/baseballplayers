class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :team
      t.string :name
      t.integer :number
      t.date :birthday
      t.integer :old
      t.string :place
      t.integer :height
      t.integer :weight
      t.string :group
      t.string :position
      t.date :draht
      t.date :total
      t.string :career
      t.string :image_id

      t.timestamps
    end
  end
end
