

describe 'Alertas de JavaScript', :alerts do  # suite de teste
    before(:each) do
        visit '/javascript_alerts'
    end

    it 'alerta' do
        click_button 'Alerta'  # clicando no botão passando o valor de jsAlert

        msg = page.driver.browser.switch_to.alert.text  # chamando selenium webdriver, passando a trabalhar no pop-up e gravando o texto na variavel
        expect(msg).to eql 'Isto é uma mensagem de alerta'   # validando o texto exibido
        sleep 3
    end

    it 'confirma' do
        click_button 'Confirma'  # clicando no botão passando o valor de jsAlert
        msg = page.driver.browser.switch_to.alert.text   # chamando selenium webdriver, passando a trabalhar no pop-up e gravando o texto na variavel
        expect(msg).to eql 'E ai confirma?'  # validando o texto exibido
        page.driver.browser.switch_to.alert.accept  # Indo no pop-up e simulando click no botão de confirmação
        expect(page).to have_content 'Mensagem confirmada'  # validando mensagem de confirmação
        sleep 2
    end

    it 'não confirma' do
        click_button 'Confirma'  # clicando no botão passando o valor de jsAlert
        msg = page.driver.browser.switch_to.alert.text   # chamando selenium webdriver, passando a trabalhar no pop-up e gravando o texto na variavel
        expect(msg).to eql 'E ai confirma?'  # validando o texto exibido
        page.driver.browser.switch_to.alert.dismiss  # Indo no pop-up e simulando click no botão de não confirma
        expect(page).to have_content 'Mensagem não confirmada'  # validando mensagem 
        sleep 2
    end

    it 'accept prompt', :accept_prompt do   # caso de teste
        accept_prompt(with: 'Thales') do  # quando tiver prompt, passará o nome escrito 
            click_button 'Prompt'  # clicando no botão passando o valor de jsAlert
            sleep 2
        end
        expect(page).to have_content 'Olá, Thales'   # validando mensagem 
        sleep 2
    end

    # desafio da aula - implementar dismiss prompt
    # Quando eu não aceita este prompt
    # Então a mensagem deve ser 'Olá, null'
    it 'dismiss prompt', :dismiss_prompt do
        dismiss_prompt do  
            click_button 'Prompt'  # clicando no botão passando o valor de jsAlert
            sleep 2
        end
        expect(page).to have_content 'Olá, null'   # validando mensagem 
        sleep 2
    end

end