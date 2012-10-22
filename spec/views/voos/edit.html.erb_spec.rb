require 'spec_helper'

describe "voos/edit" do
  before(:each) do
    @voo = assign(:voo, stub_model(Voo,
      :tarifa => 1.5,
      :ciao => nil,
      :destino => nil
    ))
  end

  it "renders the edit voo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => voos_path(@voo), :method => "post" do
      assert_select "input#voo_tarifa", :name => "voo[tarifa]"
      assert_select "input#voo_ciao", :name => "voo[ciao]"
      assert_select "input#voo_destino", :name => "voo[destino]"
    end
  end
end
