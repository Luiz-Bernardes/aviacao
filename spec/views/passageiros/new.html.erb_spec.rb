require 'spec_helper'

describe "passageiros/new" do
  before(:each) do
    assign(:passageiro, stub_model(Passageiro,
      :bairro => "MyString",
      :cidade => "MyString",
      :cpf => "MyString",
      :idade => 1,
      :nome => "MyString",
      :rg => "MyString",
      :rua => "MyString"
    ).as_new_record)
  end

  it "renders new passageiro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => passageiros_path, :method => "post" do
      assert_select "input#passageiro_bairro", :name => "passageiro[bairro]"
      assert_select "input#passageiro_cidade", :name => "passageiro[cidade]"
      assert_select "input#passageiro_cpf", :name => "passageiro[cpf]"
      assert_select "input#passageiro_idade", :name => "passageiro[idade]"
      assert_select "input#passageiro_nome", :name => "passageiro[nome]"
      assert_select "input#passageiro_rg", :name => "passageiro[rg]"
      assert_select "input#passageiro_rua", :name => "passageiro[rua]"
    end
  end
end
