class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :code
      t.boolean :used
      t.string :user_id

      t.timestamps
    end
  end
end
