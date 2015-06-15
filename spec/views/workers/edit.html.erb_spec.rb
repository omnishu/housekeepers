require 'rails_helper'

RSpec.describe "workers/edit", type: :view do
  before(:each) do
    @worker = assign(:worker, Worker.create!(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit worker form" do
    render

    assert_select "form[action=?][method=?]", worker_path(@worker), "post" do

      assert_select "input#worker_name[name=?]", "worker[name]"

      assert_select "input#worker_type[name=?]", "worker[type]"
    end
  end
end
