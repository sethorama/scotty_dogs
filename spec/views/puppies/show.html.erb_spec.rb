require 'rails_helper'

RSpec.describe "puppies/show", type: :view do
  before(:each) do
    @puppy = assign(:puppy, Puppy.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
