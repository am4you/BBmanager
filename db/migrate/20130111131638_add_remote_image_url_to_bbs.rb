class AddRemoteImageUrlToBbs < ActiveRecord::Migration
  def change
    add_column :bbs, :remote_image_url, :string
  end
end
