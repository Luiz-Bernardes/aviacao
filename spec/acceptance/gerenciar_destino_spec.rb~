# coding: utf-8

require 'spec_helper'

feature 'gerenciar destino' do

  scenario 'incluir destino' do # , :javascript => true  do
  
    paise = FactoryGirl.create(:paise,:nome =>'Brasil')
    
    visit new_destino_path

    preencher_e_verificar_destino

  end

  scenario 'alterar destino' do #, :javascript => true  do

    paise = FactoryGirl.create(:paise,:nome =>'Brasil')
    
    destino = FactoryGirl.create(:destino,:paise=>paise)

    visit edit_destino_path(destino)

    preencher_e_verificar_destino

  end

  scenario 'excluir destino' do #, :javascript => true  do

   paise = FactoryGirl.create(:paise,:nome =>'Brasil')
    
   destino = FactoryGirl.create(:destino,:paise=>paise)

   visit destinos_path

   click_link 'Excluir'

  end

   def preencher_e_verificar_destino

      fill_in 'Nome', :with => "XX"
      
      select 'Brasil', :on => 'Paise'
      
      click_button 'Salvar'

      page.should have_content 'Nome: XX'
      page.should have_content 'Paise: Brasil'
      
   end

end

