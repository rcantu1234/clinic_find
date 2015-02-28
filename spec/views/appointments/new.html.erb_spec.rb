require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      :doctor_name => "MyString",
      :location => "MyString",
      :doctor_phone_number => "MyString",
      :note => "",
      :user => nil
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input#appointment_doctor_name[name=?]", "appointment[doctor_name]"

      assert_select "input#appointment_location[name=?]", "appointment[location]"

      assert_select "input#appointment_doctor_phone_number[name=?]", "appointment[doctor_phone_number]"

      assert_select "input#appointment_note[name=?]", "appointment[note]"

      assert_select "input#appointment_user_id[name=?]", "appointment[user_id]"
    end
  end
end
