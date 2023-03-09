class AddIndexToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_index :bookmarks, %i[movie_id list_id], unique: true
  end
end
