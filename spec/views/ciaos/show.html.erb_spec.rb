require 'spec_helper'

describe "ciaos/show" do
  before(:each) do
    @ciao = assign(:ciao, stub_model(Ciao,
      :nome => "Nome",
      :sede => "Sede"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Sede/)
  end
end
