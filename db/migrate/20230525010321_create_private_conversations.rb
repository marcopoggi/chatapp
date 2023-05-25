class CreatePrivateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :private_conversations do |t|
      t.references :user_a, foreign_key: { to_table: :users }
      t.references :user_b, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
