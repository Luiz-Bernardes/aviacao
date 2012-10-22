# coding: utf-8

require 'spec_helper'

feature 'gerenciar passageirovoo' do

  scenario 'incluir passageirovoo' do # , :javascript => true  do
  
    passageiro = FactoryGirl.create(:passageiro,:nome =>'Luiz')
    
    voo = FactoryGirl.create(:voo,:tarifa => 10.0)
    
    visit new_passageirovoo_path

    preencher_e_verificar_passageirovoo

  end

  scenario 'alterar passageirovoo' do #, :javascript => true  do

    passageiro = FactoryGirl.create(:passageiro,:nome =>'Luiz')
    
    voo = FactoryGirl.create(:voo,:tarifa => 10.0)
    
    passageirovoo = FactoryGirl.create(:passageirovoo,:passageiro=>passageiro,:voo=>voo)

    visit edit_passageirovoo_path(passageirovoo)

    preencher_e_verificar_passageirovoo

  end

  scenario 'excluir passageirovoo' do #, :javascript => true  do

    passageiro = FactoryGirl.create(:passageiro,:nome =>'Luiz')
    
    voo = FactoryGirl.create(:voo,:tarifa => 10.0)
    
    passageirovoo = FactoryGirl.create(:passageirovoo,:passageiro=>passageiro,:voo=>voo)

    visit passageirovoos_path

    click_link 'Excluir'

  end

   def preencher_e_verificar_passageirovoo

      fill_in 'Numpassageiros', :with => 10
      
      select 'Luiz', :on => 'Passageiro'

      select '10.0', :on => 'Voo'
      
      click_button 'Salvar'

      page.should have_content 'Numpassageiros: 10'
      page.should have_content 'Passageiro: Luiz'
      page.should have_content 'Voo: 10.0'
      
   end

end

