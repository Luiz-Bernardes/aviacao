require 'spec_helper'

describe "passageirovoos/index" do
  before(:each) do
    assign(:passageirovoos, [
      stub_model(Passageirovoo,
        :data => "Data",
        :hora => "Hora",
        :numpassageiros => 1,
        :passageiro => nil,
        :voo => nil
      ),
      stub_model(Passageirovoo,
        :data => "Data",
        :hora => "Hora",
        :numpassageiros => 1,
        :passageiro => nil,
        :voo => nil
      )
    ])
  end

  it "renders a list of passageirovoos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
