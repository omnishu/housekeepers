require 'rails_helper'

RSpec.describe "feedbacks/edit", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      :comments => "MyText",
      :rating => 1
    ))
  end

  it "renders the edit feedback form" do
    render

    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do

      assert_select "textarea#feedback_comments[name=?]", "feedback[comments]"

      assert_select "input#feedback_rating[name=?]", "feedback[rating]"
    end
  end
end
