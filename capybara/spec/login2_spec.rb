
# forms onde o campo da data de nascimento muda randomicamente
describe 'Login 2 com random', :login2 do
    before(:each) do
        visit '/login2'
    end

    it 'com data de nascimento' do
        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'

        form_login = find('#login')  # encontrando form passando id e gravando na variavel

        case form_login.text       # quando tiver no formulario
        when /Dia/                 # a palavra 'Dia'
            find('#day').set '29'  # o campo será preenchido com '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end

       sleep 3
    
    click_button 'Login'  # clica no botão inspecionado
    sleep 1
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' 
    end

end