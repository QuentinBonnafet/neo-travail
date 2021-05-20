class Episode < ApplicationRecord
  validates :title, :description, :publication_date, :soundcloud_url, presence: true
end
