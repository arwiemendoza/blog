require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      category_id: 1,
      name: "MyString",
      body: "MyString"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input[name=?]", "task[category_id]"

      assert_select "input[name=?]", "task[name]"

      assert_select "input[name=?]", "task[body]"
    end
  end
end