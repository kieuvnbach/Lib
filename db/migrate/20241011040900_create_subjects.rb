class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:subjects)
      create_table :subjects do |t|
        t.string :name
        t.timestamps
      end
    end
  end
end
