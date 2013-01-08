class CreateBbs < ActiveRecord::Migration
  def change
    create_table :bbs do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :zipcode
      t.string :area
      t.string :state
      t.string :phone
      t.string :fax
      t.string :web
      t.integer :user_id

      t.timestamps
    end
  end
end
