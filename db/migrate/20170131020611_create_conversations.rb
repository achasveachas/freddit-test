class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.text :title
      t.text :post

      t.timestamps
    end
  end
end
