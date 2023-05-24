class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name

      t.timestamps
    end

    create_table :users_rooms do |t|
      t.belongs_to :user
      t.belongs_to :room
    end
  end
end
