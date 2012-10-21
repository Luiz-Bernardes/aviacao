# coding: utf-8

require 'spec_helper'

feature 'gerenciar paise' do

  scenario 'incluir paise' do # , :javascript => true  do

    visit new_paise_path

    preencher_e_verificar_paise

  end

  scenario 'alterar paise' do #, :javascript => true  do

    paise = FactoryGirl.create(:paise)

    visit edit_paise_path(paise)

    preencher_e_verificar_paise

  end

   scenario 'excluir paise' do #, :javascript => true  do

       paise = FactoryGirl.create(:paise)

        visit paises_path

        click_link 'Excluir'

  end

   def preencher_e_verificar_paise

      fill_in 'Nome', :with => "Brasil"
      
      click_button 'Salvar'

      page.should have_content 'Nome: Brasil'
      
   end

end

