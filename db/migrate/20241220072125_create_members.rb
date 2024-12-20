class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.date :membership_date
      t.string :membership_type

      t.timestamps
    end
  end
end
