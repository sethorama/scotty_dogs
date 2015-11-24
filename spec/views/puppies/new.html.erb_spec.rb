require 'rails_helper'

RSpec.describe "puppies/new", type: :view do
  before(:each) do
    assign(:puppy, Puppy.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new puppy form" do
    render

    assert_select "form[action=?][method=?]", puppies_path, "post" do

      assert_select "input#puppy_title[name=?]", "puppy[title]"

      assert_select "textarea#puppy_description[name=?]", "puppy[description]"
    end
  end
end
