require 'spec_helper'

describe "destinos/edit" do
  before(:each) do
    @destino = assign(:destino, stub_model(Destino,
      :nome => "MyString",
      :paise => nil
    ))
  end

  it "renders the edit destino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destinos_path(@destino), :method => "post" do
      assert_select "input#destino_nome", :name => "destino[nome]"
      assert_select "input#destino_paise", :name => "destino[paise]"
    end
  end
end
