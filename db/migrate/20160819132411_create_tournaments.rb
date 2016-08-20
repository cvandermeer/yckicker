class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :name
    end

    create_table :matches do |t|
      t.integer :team_a
      t.integer :team_b
      t.integer :tournament_id
    end
  end
end
