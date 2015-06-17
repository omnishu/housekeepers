require 'rails_helper'

RSpec.describe "feedbacks/show", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      :comments => "MyText",
      :rating => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
