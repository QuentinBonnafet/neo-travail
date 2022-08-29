class ChangeSoundcloudUrlToUrlForEpisodes < ActiveRecord::Migration[6.0]
  def change
    rename_column :episodes, :soundcloud_url, :link_url
  end
end
