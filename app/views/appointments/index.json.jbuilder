json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :doctor_name, :appointment_time, :location, :doctor_phone_number, :note, :user_id
  json.url appointment_url(appointment, format: :json)
end
