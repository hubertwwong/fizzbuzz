class CreateFizzies < ActiveRecord::Migration
  def self.up
    create_table :fizzies do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :fizzies
  end
end
