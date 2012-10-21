# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :passageiro do
    bairro "MyString"
    cidade "MyString"
    cpf "MyString"
    idade 1
    nome "MyString"
    rg "MyString"
    rua "MyString"
  end
end
