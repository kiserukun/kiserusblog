class CreateBlogTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_tag_relations do |t|
      t.references :blogs, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
