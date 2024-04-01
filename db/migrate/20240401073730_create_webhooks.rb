class CreateWebhooks < ActiveRecord::Migration[7.1]
  def change
    create_table :webhooks do |t|
      t.string :name
      t.string :message

      t.timestamps
    end
  end
end
