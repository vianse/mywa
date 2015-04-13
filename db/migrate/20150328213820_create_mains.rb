class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :code
      t.string :name
      t.string :age
      t.string :sex
      t.string :blood_type
      t.string :allergic_food
      t.string :allergic_drug
      t.string :diseases
      t.string :emergency_name
      t.string :emergency_phone
      t.string :life_insurance
      t.string :car_insurance
      t.string :user_id

      t.timestamps
    end
  end
end
