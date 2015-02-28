require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :doctor_name => "MyString",
      :location => "MyString",
      :doctor_phone_number => "MyString",
      :note => "",
      :user => nil
    ))
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

      assert_select "input#appointment_doctor_name[name=?]", "appointment[doctor_name]"

      assert_select "input#appointment_location[name=?]", "appointment[location]"

      assert_select "input#appointment_doctor_phone_number[name=?]", "appointment[doctor_phone_number]"

      assert_select "input#appointment_note[name=?]", "appointment[note]"

      assert_select "input#appointment_user_id[name=?]", "appointment[user_id]"
    end
  end
end
