require 'spec_helper'

describe "ciaos/index" do
  before(:each) do
    assign(:ciaos, [
      stub_model(Ciao,
        :nome => "Nome",
        :sede => "Sede"
      ),
      stub_model(Ciao,
        :nome => "Nome",
        :sede => "Sede"
      )
    ])
  end

  it "renders a list of ciaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Sede".to_s, :count => 2
  end
end
