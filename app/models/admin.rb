class Admin < ApplicationRecord
  # CONFIGURATION =========================================================

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # enum role: {
  #   seo: 0,
  #   redactor: 1,
  #   admin: 2
  # }
  # set default 0 in admin table

  # CALLBACKS =============================================================

  # validates :role, presence: true

  # SCOPES ================================================================

  # CLASS METHODS =========================================================

  # INSTANCE METHODS ======================================================

  # PRIVATE ===============================================================
end
