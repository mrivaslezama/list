require 'rails_helper'

RSpec.describe "lists/edit", type: :view do
  let(:list) {
    List.create!(
      name: "MyString",
      last_name: "MyString",
      rut: "MyString",
      phone: "MyString",
      location: "MyString",
      avatar: "MyString",
      user: nil,
      done: false
    )
  }

  before(:each) do
    assign(:list, list)
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(list), "post" do

      assert_select "input[name=?]", "list[name]"

      assert_select "input[name=?]", "list[last_name]"

      assert_select "input[name=?]", "list[rut]"

      assert_select "input[name=?]", "list[phone]"

      assert_select "input[name=?]", "list[location]"

      assert_select "input[name=?]", "list[avatar]"

      assert_select "input[name=?]", "list[user_id]"

      assert_select "input[name=?]", "list[done]"
    end
  end
end
