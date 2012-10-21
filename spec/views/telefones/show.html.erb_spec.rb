require 'spec_helper'

describe "telefones/show" do
  before(:each) do
    @telefone = assign(:telefone, stub_model(Telefone,
      :numero => "Numero",
      :passageiro => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero/)
    rendered.should match(//)
  end
end
