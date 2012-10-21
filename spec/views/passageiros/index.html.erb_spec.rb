require 'spec_helper'

describe "passageiros/index" do
  before(:each) do
    assign(:passageiros, [
      stub_model(Passageiro,
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cpf => "Cpf",
        :idade => 1,
        :nome => "Nome",
        :rg => "Rg",
        :rua => "Rua"
      ),
      stub_model(Passageiro,
        :bairro => "Bairro",
        :cidade => "Cidade",
        :cpf => "Cpf",
        :idade => 1,
        :nome => "Nome",
        :rg => "Rg",
        :rua => "Rua"
      )
    ])
  end

  it "renders a list of passageiros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
  end
end
