require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    assign(:list, List.create!(
      name: "Name",
      last_name: "Last Name",
      rut: "Rut",
      phone: "Phone",
      location: "Location",
      avatar: "Avatar",
      user: nil,
      done: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Rut/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
