class CreateEntriesTable < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title, :limit => 1000
      t.text :post
      t.date :date_posted

      t.timestamps
    end
  end
end
