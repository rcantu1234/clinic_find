require 'rails_helper'

RSpec.describe "appointments/show", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :doctor_name => "Doctor Name",
      :location => "Location",
      :doctor_phone_number => "Doctor Phone Number",
      :note => "",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Doctor Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Doctor Phone Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
