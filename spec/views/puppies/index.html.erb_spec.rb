require 'rails_helper'

RSpec.describe "puppies/index", type: :view do
  before(:each) do
    assign(:puppies, [
      Puppy.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Puppy.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of puppies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
