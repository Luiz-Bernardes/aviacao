require 'spec_helper'

describe "voos/show" do
  before(:each) do
    @voo = assign(:voo, stub_model(Voo,
      :tarifa => 1.5,
      :ciao => nil,
      :destino => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
