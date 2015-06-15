require 'rails_helper'

RSpec.describe "workers/new", type: :view do
  before(:each) do
    assign(:worker, Worker.new(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new worker form" do
    render

    assert_select "form[action=?][method=?]", workers_path, "post" do

      assert_select "input#worker_name[name=?]", "worker[name]"

      assert_select "input#worker_type[name=?]", "worker[type]"
    end
  end
end
