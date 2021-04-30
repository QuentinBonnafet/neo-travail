class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.date :publication_date
      t.string :soundcloud_url

      t.timestamps
    end
  end
end
