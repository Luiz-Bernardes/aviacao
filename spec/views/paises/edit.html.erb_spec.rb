require 'spec_helper'

describe "paises/edit" do
  before(:each) do
    @paise = assign(:paise, stub_model(Paise,
      :nome => "MyString"
    ))
  end

  it "renders the edit paise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paises_path(@paise), :method => "post" do
      assert_select "input#paise_nome", :name => "paise[nome]"
    end
  end
end
