require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        category_id: 2,
        name: "Name",
        body: "Body"
      ),
      Task.create!(
        category_id: 2,
        name: "Name",
        body: "Body"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Body".to_s, count: 2
  end
end
