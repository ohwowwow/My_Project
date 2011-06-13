class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :pwd
      t.string :name
      t.string :surname
      t.string :nickname
      t.string :sex
      t.integer :age
      t.string :address
      t.string :role
      t.string :email
      t.integer :tel

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
