require 'spec_helper'

describe "passageirovoos/show" do
  before(:each) do
    @passageirovoo = assign(:passageirovoo, stub_model(Passageirovoo,
      :data => "Data",
      :hora => "Hora",
      :numpassageiros => 1,
      :passageiro => nil,
      :voo => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Hora/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
