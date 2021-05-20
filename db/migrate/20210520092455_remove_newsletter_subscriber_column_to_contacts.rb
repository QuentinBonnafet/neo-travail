class RemoveNewsletterSubscriberColumnToContacts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :newsletter_subscriber, :boolean
  end
end
