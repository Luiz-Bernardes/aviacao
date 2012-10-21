# coding: utf-8

require 'spec_helper'

feature 'gerenciar telefone' do

  scenario 'incluir telefone' do # , :javascript => true  do
    
    passageiro = FactoryGirl.create(:passageiro,:nome =>'Luiz')
    
    visit new_telefone_path

    preencher_e_verificar_telefone

  end

  scenario 'alterar telefone' do #, :javascript => true  do

    passageiro = FactoryGirl.create(:passageiro,:nome =>'Luiz') 

    telefone = FactoryGirl.create(:telefone,:passageiro=>passageiro)

    visit edit_telefone_path(telefone)

    preencher_e_verificar_telefone

  end

   scenario 'excluir telefone' do #, :javascript => true  do

       passageiro = FactoryGirl.create(:passageiro,:nome =>'Luiz') 
       
       telefone = FactoryGirl.create(:telefone,:passageiro=>passageiro)

       visit telefones_path

       click_link 'Excluir'

  end

   def preencher_e_verificar_telefone

      fill_in 'Numero', :with => "123"
      
      select 'Luiz', :on => 'Passageiro'
      
      click_button 'Salvar'

      page.should have_content 'Numero: 123'
      page.should have_content 'Passageiro: Luiz'
      
   end

end

