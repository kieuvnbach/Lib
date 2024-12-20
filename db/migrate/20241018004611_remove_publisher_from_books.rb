class RemovePublisherFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :publisher, :integer
  end
end
