class CreateMailContexts < ActiveRecord::Migration
  def change
    create_table :mail_contexts do |t|
      t.string :email
      t.string :message_body
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :time_part
      t.string :user_id

      t.timestamps null: false
    end
  end
end
