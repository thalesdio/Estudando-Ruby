
# Preenchendo cadastro q contem Ids dinamicos

describe 'IDs Dinamicos', :dinamicos do
    before(:each) do
        visit '/access'
    end

    it 'cadastro' do
        #find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'Thales'    # buscando o campo de usuario q usa id dinamico passando o id dinamico
        #find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '1234'   # buscando o campo de senha q usa id dinamico passando o id dinamico
        #find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click   # buscando o botão usa id dinamico passando o id dinamico

    find('input[id$=UsernameInput]').set 'Thales'  # CSS selector com like, usando $ quando termina com a expressão passada
    find('input[id^=PasswordInput]').set '1234'  # CSS selector com like, usando ^ quando começa com a expressão passada
    find('a[id*=GetStartedButton]').click  # CSS selector com like, usando * quando contem a expressão passada

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
            sleep 2
    end
end


# CSS selector:
# $ para termina com
# ^ para começa com
# * para contem