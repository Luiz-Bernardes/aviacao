require 'spec_helper'

describe "destinos/show" do
  before(:each) do
    @destino = assign(:destino, stub_model(Destino,
      :nome => "Nome",
      :paise => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(//)
  end
end
