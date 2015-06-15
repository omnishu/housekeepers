require 'rails_helper'

RSpec.describe "workers/index", type: :view do
  before(:each) do
    assign(:workers, [
      Worker.create!(
        :name => "Name",
        :type => "Type"
      ),
      Worker.create!(
        :name => "Name",
        :type => "Type"
      )
    ])
  end

  it "renders a list of workers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
