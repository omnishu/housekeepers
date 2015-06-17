require 'rails_helper'

RSpec.describe "feedbacks/index", type: :view do
  before(:each) do
    assign(:feedbacks, [
      Feedback.create!(
        :comments => "MyText",
        :rating => 1
      ),
      Feedback.create!(
        :comments => "MyText",
        :rating => 1
      )
    ])
  end

  it "renders a list of feedbacks" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
