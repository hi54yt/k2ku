class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string    :url
      t.string    :title
      t.timestamps
    end
  end
end
