# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :passageirovoo do
    data "MyString"
    hora "MyString"
    numpassageiros 1
    passageiro nil
    voo nil
  end
end
