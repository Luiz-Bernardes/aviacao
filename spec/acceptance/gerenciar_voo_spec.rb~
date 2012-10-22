# coding: utf-8

require 'spec_helper'

feature 'gerenciar voo' do

  scenario 'incluir voo' do # , :javascript => true  do
  
    ciao = FactoryGirl.create(:ciao,:nome =>'XX')
    
    destino = FactoryGirl.create(:destino,:nome =>'YY')
    
    visit new_voo_path

    preencher_e_verificar_voo

  end

  scenario 'alterar voo' do #, :javascript => true  do

    ciao = FactoryGirl.create(:ciao,:nome =>'XX')
    
    destino = FactoryGirl.create(:destino,:nome =>'YY')
    
    voo = FactoryGirl.create(:voo,:ciao=>ciao,:destino=>destino)

    visit edit_voo_path(voo)

    preencher_e_verificar_voo

  end

  scenario 'excluir voo' do #, :javascript => true  do

   ciao = FactoryGirl.create(:ciao,:nome =>'XX')
    
   destino = FactoryGirl.create(:destino,:nome =>'YY')
    
   voo = FactoryGirl.create(:voo,:ciao=>ciao,:destino=>destino)

   visit voos_path

   click_link 'Excluir'

  end

   def preencher_e_verificar_voo

      fill_in 'Tarifa', :with => 10.0
      
      select 'XX', :on => 'Ciao'

      select 'YY', :on => 'Destino'
      
      click_button 'Salvar'

      page.should have_content 'Tarifa: 10.0'
      page.should have_content 'Ciao: XX'
      page.should have_content 'Destino: YY'
      
   end

end

