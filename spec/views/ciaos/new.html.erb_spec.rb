require 'spec_helper'

describe "ciaos/new" do
  before(:each) do
    assign(:ciao, stub_model(Ciao,
      :nome => "MyString",
      :sede => "MyString"
    ).as_new_record)
  end

  it "renders new ciao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ciaos_path, :method => "post" do
      assert_select "input#ciao_nome", :name => "ciao[nome]"
      assert_select "input#ciao_sede", :name => "ciao[sede]"
    end
  end
end
