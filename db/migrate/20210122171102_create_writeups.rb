class CreateWriteups < ActiveRecord::Migration[5.2]
  def change
    create_table :writeups do |t|
      t.string :tournament_name
      t.datetime :startdate
      t.string :problem_name
      t.string :problem_type
      t.string :description

      t.timestamps
    end
  end
end
