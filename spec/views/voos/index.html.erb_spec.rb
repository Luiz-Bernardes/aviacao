require 'spec_helper'

describe "voos/index" do
  before(:each) do
    assign(:voos, [
      stub_model(Voo,
        :tarifa => 1.5,
        :ciao => nil,
        :destino => nil
      ),
      stub_model(Voo,
        :tarifa => 1.5,
        :ciao => nil,
        :destino => nil
      )
    ])
  end

  it "renders a list of voos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
