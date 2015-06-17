require 'rails_helper'

RSpec.describe "feedbacks/new", type: :view do
  before(:each) do
    assign(:feedback, Feedback.new(
      :comments => "MyText",
      :rating => 1
    ))
  end

  it "renders new feedback form" do
    render

    assert_select "form[action=?][method=?]", feedbacks_path, "post" do

      assert_select "textarea#feedback_comments[name=?]", "feedback[comments]"

      assert_select "input#feedback_rating[name=?]", "feedback[rating]"
    end
  end
end
