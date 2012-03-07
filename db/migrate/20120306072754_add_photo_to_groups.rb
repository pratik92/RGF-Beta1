class AddPhotoToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :photo_file_name, :string

    add_column :groups, :photo_content_type, :string

    add_column :groups, :photo_file_size, :integer

  end
end
