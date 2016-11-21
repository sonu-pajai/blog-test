class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.text :short_description
      t.boolean :status
      t.date :published_on
      t.integer :pagevisits
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
