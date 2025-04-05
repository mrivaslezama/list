require 'rails_helper'

RSpec.describe "lists/new", type: :view do
  before(:each) do
    assign(:list, List.new(
      name: "MyString",
      last_name: "MyString",
      rut: "MyString",
      phone: "MyString",
      location: "MyString",
      avatar: "MyString",
      user: nil,
      done: false
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

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
