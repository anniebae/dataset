class AddEntryUserIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :entry_id, :integer
    add_column :tags, :user_id, :integer
  end
end
