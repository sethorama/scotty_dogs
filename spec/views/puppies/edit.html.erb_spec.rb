require 'rails_helper'

RSpec.describe "puppies/edit", type: :view do
  before(:each) do
    @puppy = assign(:puppy, Puppy.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit puppy form" do
    render

    assert_select "form[action=?][method=?]", puppy_path(@puppy), "post" do

      assert_select "input#puppy_title[name=?]", "puppy[title]"

      assert_select "textarea#puppy_description[name=?]", "puppy[description]"
    end
  end
end
