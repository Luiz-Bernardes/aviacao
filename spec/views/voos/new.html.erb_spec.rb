require 'spec_helper'

describe "voos/new" do
  before(:each) do
    assign(:voo, stub_model(Voo,
      :tarifa => 1.5,
      :ciao => nil,
      :destino => nil
    ).as_new_record)
  end

  it "renders new voo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => voos_path, :method => "post" do
      assert_select "input#voo_tarifa", :name => "voo[tarifa]"
      assert_select "input#voo_ciao", :name => "voo[ciao]"
      assert_select "input#voo_destino", :name => "voo[destino]"
    end
  end
end
