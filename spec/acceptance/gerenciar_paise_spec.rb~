# coding: utf-8

require 'spec_helper'

feature 'gerenciar ciao' do

  scenario 'incluir ciao' do # , :javascript => true  do

    visit new_ciao_path

    preencher_e_verificar_ciao

  end

  scenario 'alterar ciao' do #, :javascript => true  do

    ciao = FactoryGirl.create(:ciao)

    visit edit_ciao_path(ciao)

    preencher_e_verificar_ciao

  end

   scenario 'excluir ciao' do #, :javascript => true  do

       ciao = FactoryGirl.create(:ciao)

        visit ciaos_path

        click_link 'Excluir'

  end

   def preencher_e_verificar_ciao

      fill_in 'Nome', :with => "XX"
      fill_in 'Sede', :with => "YY"
      
      click_button 'Salvar'

      page.should have_content 'Nome: XX'
      page.should have_content 'Sede: YY'
      
   end

end

