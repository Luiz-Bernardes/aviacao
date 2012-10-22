require 'spec_helper'

describe "destinos/new" do
  before(:each) do
    assign(:destino, stub_model(Destino,
      :nome => "MyString",
      :paise => nil
    ).as_new_record)
  end

  it "renders new destino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destinos_path, :method => "post" do
      assert_select "input#destino_nome", :name => "destino[nome]"
      assert_select "input#destino_paise", :name => "destino[paise]"
    end
  end
end
