class CreateUsers < ActiveRecord::Migration[5.0]
    def up
      create_table :users do |t|
        t.string :f_name
        t.string :l_name
        t.string :email
        t.string :password
        
      end
    end
  
    def down
      drop_table :users
    end
  end
  