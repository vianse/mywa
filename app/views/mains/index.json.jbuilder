json.array!(@mains) do |main|
  json.extract! main, :id, :code, :name, :age, :sex, :blood_type, :allergic_food, :allergic_drug, :diseases, :emergency_name, :emergency_phone, :life_insurance, :car_insurance, :user_id
  json.url main_url(main, format: :json)
end
