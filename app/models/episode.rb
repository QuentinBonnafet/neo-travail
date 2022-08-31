class Episode < ApplicationRecord
  validates :title, :description, :publication_date, :link_url, presence: true
end
