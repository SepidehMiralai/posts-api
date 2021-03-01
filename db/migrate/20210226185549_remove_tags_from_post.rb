class RemoveTagsFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :tags, :integer
  end
end
