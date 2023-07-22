class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :handle
      t.string :display_name
      t.text :bio
      t.date :born_at
      t.references :follower, foreign_key: { to_table: :users}


      t.timestamps
    end
  end
end
