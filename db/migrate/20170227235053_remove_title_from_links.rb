class RemoveTitleFromLinks < ActiveRecord::Migration[5.0]
  def change
    remove_column :links, :title, :string
  end
end
