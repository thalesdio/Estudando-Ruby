

describe 'Forms', :forms do
    it 'login successfully' do
        visit '/login'
        fill_in 'userId', with: 'stark'   # username e password foram os campos inspecionados na pagina
        fill_in 'password', with: 'jarvis!'  # fill_in preenche os campos com os valores q esta sendo passado

        click_button 'Login'  # clica no botão inspecionado

        expect(find('#flash').visible?).to be true   # find é um comando do Capybara para buscar elementos da pagina 

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'  # validando a mensagem apresentada na pagina

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' 

        #page.save_screenshot('evidencias/login_com_sucesso.png')  # obtendo prints do caso de teste e salvando na pasta 'evidencias'
    end

    after(:each) do |e|  # 'e' é o exemplo do q esta sendo executado
        nome = puts e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')  # 
        page.save_screenshot('evidencias/' + nome + '.png')  # obtendo prints do caso de teste e salvando na pasta 'evidencias'
    end

end