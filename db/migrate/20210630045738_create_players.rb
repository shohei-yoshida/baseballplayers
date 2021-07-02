class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :team
      t.string :name
      t.integer :number
      t.date :birthday
      t.integer :old
      t.string :place
      t.decimal :height
      t.decimal :weight
      t.string :group
      t.string :position
      t.date :draht
      t.integer :total
      t.string :career

      t.timestamps
    end
  end
end
