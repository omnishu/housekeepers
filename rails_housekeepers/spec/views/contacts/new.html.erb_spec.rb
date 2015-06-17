require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :address_line_1 => "MyString",
      :address_line_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :contact_number => 1,
      :other_details => ""
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_address_line_1[name=?]", "contact[address_line_1]"

      assert_select "input#contact_address_line_2[name=?]", "contact[address_line_2]"

      assert_select "input#contact_city[name=?]", "contact[city]"

      assert_select "input#contact_state[name=?]", "contact[state]"

      assert_select "input#contact_country[name=?]", "contact[country]"

      assert_select "input#contact_contact_number[name=?]", "contact[contact_number]"

      assert_select "input#contact_other_details[name=?]", "contact[other_details]"
    end
  end
end
