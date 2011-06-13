class CreateRoomStatuses < ActiveRecord::Migration
  def self.up
    create_table :room_statuses do |t|
      t.integer :room_num
      t.string :room_name
      t.string :room_status

      t.timestamps
    end
  end

  def self.down
    drop_table :room_statuses
  end
end
