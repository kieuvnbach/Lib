class AddPublisherToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publisher, :integer
  end
end
