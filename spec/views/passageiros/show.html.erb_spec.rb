require 'spec_helper'

describe "passageiros/show" do
  before(:each) do
    @passageiro = assign(:passageiro, stub_model(Passageiro,
      :bairro => "Bairro",
      :cidade => "Cidade",
      :cpf => "Cpf",
      :idade => 1,
      :nome => "Nome",
      :rg => "Rg",
      :rua => "Rua"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Cpf/)
    rendered.should match(/1/)
    rendered.should match(/Nome/)
    rendered.should match(/Rg/)
    rendered.should match(/Rua/)
  end
end
