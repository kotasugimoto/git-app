class CreateArtcles < ActiveRecord::Migration
  def change
    create_table :artcles do |t|
      t.string :title
      t.string :auther
      t.text :body

      t.timestamps null: false
    end
  end
end
