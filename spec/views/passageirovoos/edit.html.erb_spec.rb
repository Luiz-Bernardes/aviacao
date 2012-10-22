require 'spec_helper'

describe "passageirovoos/edit" do
  before(:each) do
    @passageirovoo = assign(:passageirovoo, stub_model(Passageirovoo,
      :data => "MyString",
      :hora => "MyString",
      :numpassageiros => 1,
      :passageiro => nil,
      :voo => nil
    ))
  end

  it "renders the edit passageirovoo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => passageirovoos_path(@passageirovoo), :method => "post" do
      assert_select "input#passageirovoo_data", :name => "passageirovoo[data]"
      assert_select "input#passageirovoo_hora", :name => "passageirovoo[hora]"
      assert_select "input#passageirovoo_numpassageiros", :name => "passageirovoo[numpassageiros]"
      assert_select "input#passageirovoo_passageiro", :name => "passageirovoo[passageiro]"
      assert_select "input#passageirovoo_voo", :name => "passageirovoo[voo]"
    end
  end
end
