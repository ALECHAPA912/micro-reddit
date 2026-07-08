class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.belongs_to :user
      t.belongs_to :post
      t.timestamps
    end
  end
end
