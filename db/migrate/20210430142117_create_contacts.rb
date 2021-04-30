class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.text :message
      t.boolean :newsletter_subscriber, default: false

      t.timestamps
    end
  end
end
