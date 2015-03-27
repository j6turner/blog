class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :user_id, :integer
      t.column :name, :string

      t.timestamps
    end
  end
end
