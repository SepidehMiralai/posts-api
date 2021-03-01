class AddTagsToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :tags, :text, array:true, defult: []
  end
end
