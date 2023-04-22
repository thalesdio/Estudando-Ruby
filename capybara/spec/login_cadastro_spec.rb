

# aula de ESCOPO

# login ou cadastrar
describe 'Login com cadastro', :login3 do
    before(:each) do
        visit '/access'
    end

    it 'login' do

    login_form = find('#login')   # identificar elemento pai do escopo

    # Dessa forma os finds abaixo serão executados apenas no bloco de codigo do form 'login'
    login_form.find('input[name=username]').set 'stark'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
    login_form.find('input[name=password]').set 'jarvis!'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
    
    click_button 'Entrar'  # clica no botão inspecionado
    sleep 1
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' 
    end

    it 'login com within', :within do

        within('#login') do  # usando método within como escopo
           find('input[name=username]').set 'stark'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
           find('input[name=password]').set 'jarvis!'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
           click_button 'Entrar'  # clica no botão inspecionado
        end
    
        sleep 1
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' 
        end

    it 'Cadastrar' do

        login_form = find('#signup')   # identificar elemento pai do escopo
    
        # Dessa forma os finds abaixo serão executados apenas no bloco de codigo do form 'login'
        login_form.find('input[name=username]').set 'stark'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
        login_form.find('input[name=password]').set 'jarvis!'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
        
        click_button 'Criar Conta'  # clica no botão inspecionado
        sleep 1
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' 
        end


        it 'Cadastar com within', :cadastrar do

            within('#signup') do  # usando método within como escopo
               find('input[name=username]').set 'Thales'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
               find('input[name=password]').set '1234567!'  # CSS selector na estrutura: tipo do campo, atributo e valor do atributo
               click_link 'Criar Conta'  #  Nesse caso o botão é um link
            end
        
            sleep 1
            expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!' 
            end

end