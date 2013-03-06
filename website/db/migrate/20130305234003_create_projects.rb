class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :author
      t.string :title
      t.text :content
      t.string :image
      t.string :link
      t.string :repo

      t.timestamps
    end
  end
end
