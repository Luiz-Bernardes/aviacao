require 'spec_helper'

describe "paises/new" do
  before(:each) do
    assign(:paise, stub_model(Paise,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new paise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paises_path, :method => "post" do
      assert_select "input#paise_nome", :name => "paise[nome]"
    end
  end
end
