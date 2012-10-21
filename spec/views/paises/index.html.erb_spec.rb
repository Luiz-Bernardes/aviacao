require 'spec_helper'

describe "paises/index" do
  before(:each) do
    assign(:paises, [
      stub_model(Paise,
        :nome => "Nome"
      ),
      stub_model(Paise,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of paises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
