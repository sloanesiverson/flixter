class AddImageToCourses < ActiveRecord::Migration[5.2]
  def change
    mount_uploader :image, :courses, ImageUploader
    add_column :courses, :image, :string
  end
end
