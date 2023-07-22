class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.text :body
      t.references :user
      t.timestamps
    end
  end
end