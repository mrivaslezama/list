require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        name: "Name",
        last_name: "Last Name",
        rut: "Rut",
        phone: "Phone",
        location: "Location",
        avatar: "Avatar",
        user: nil,
        done: false
      ),
      List.create!(
        name: "Name",
        last_name: "Last Name",
        rut: "Rut",
        phone: "Phone",
        location: "Location",
        avatar: "Avatar",
        user: nil,
        done: false
      )
    ])
  end

  it "renders a list of lists" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rut".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Avatar".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
