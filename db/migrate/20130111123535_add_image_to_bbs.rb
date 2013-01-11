class AddImageToBbs < ActiveRecord::Migration
  def change
    add_column :bbs, :image, :string
  end
end
