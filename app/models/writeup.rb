class Writeup < ApplicationRecord
    def chancge
        create_table :writeups do |t|
            t.string :tournament_name, null: false
            t.datetime :startdate
            t.string :problem_name
            t.string :problem_type, null: false
            t.string :description, null: false
            
            t.timestamps
        end
    end
end
