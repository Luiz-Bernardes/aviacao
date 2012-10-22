require 'spec_helper'

describe "destinos/index" do
  before(:each) do
    assign(:destinos, [
      stub_model(Destino,
        :nome => "Nome",
        :paise => nil
      ),
      stub_model(Destino,
        :nome => "Nome",
        :paise => nil
      )
    ])
  end

  it "renders a list of destinos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
