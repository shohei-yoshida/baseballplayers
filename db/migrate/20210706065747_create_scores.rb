class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :player_id
      t.integer :season
      t.integer :hits
      t.integer :double
      t.integer :triple
      t.integer :home_run
      t.decimal :avarage
      t.integer :points
      t.integer :win
      t.integer :lose
      t.integer :hold
      t.integer :close
      

      t.timestamps
    end
  end
end
