require 'spec_helper'

describe "paises/show" do
  before(:each) do
    @paise = assign(:paise, stub_model(Paise,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
