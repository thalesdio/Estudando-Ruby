

describe 'Tabelas', :tables do
    before(:each) do
        visit '/tables'  # passando apenas a rota pois a URL padrao foi definida no spec_helper
    end

    it 'exibir salario do Robert' do
        atores = all('table tbody tr')   # passando CSS selector da linha da tabela

        # DETECT percorre a tabela e acha a linha q contem o texto passado, salvando na variavel
        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr')}

        expect(stark.text).to include '10.000.000'  # validando dentro da variavel se contem o valor passado
    end

    it 'exibir salario do Vin Diesel' do
        diesel = find('table tbody tr', text: '@vindiesel')  # procurando na tabela a tr q contenha o texto passado e salvando na variavel
        expect(diesel).to have_content '10.000.000'  # validando dentro da variavel se contem o valor passado
    end

    it 'exibir filme ferro' do
        robert = find('table tbody tr', text: '@robertdowneyjr')  # procurando na tabela a tr q contenha o texto passado e salvando na variavel
        movie =  robert.all('td')[2].text  # traz todas as coluna dentro da variavel, pega o texto da posição 2 do array e exibe
        expect(movie).to eql 'Vingadores'  # validando dentro da variavel se contem o valor passado
    end

    it 'exibir insta do Chris Evans' do
        capitan = find('table tbody tr', text: 'Chris Evans')   # procurando na tabela a tr q contenha o texto passado e salvando na variavel
        insta = capitan.all('td')[4].text  # traz todas as coluna dentro da variavel, pega o texto da posição 4 do array e exibe
        expect(insta).to eql '@teamcevans'  # validando dentro da variavel se contem o valor passado
    end

    it 'Deletar Chris Pratt' do
        prat = find('table tbody tr', text: 'Chris Prat')   # procurando na tabela a tr q contenha o texto passado e salvando na variavel
        prat.find('a', text: 'delete').click  # procurando no HREF o texto passando e clicando nesse link

        msg = page.driver.browser.switch_to.alert.text  # chamando selenium webdriver, passando a trabalhar no pop-up e gravando o texto na variavel
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'   # validando o texto exibido
    end

    it 'Editar Chris Pratt' do
        prat = find('table tbody tr', text: 'Chris Prat')   # procurando na tabela a tr q contenha o texto passado e salvando na variavel
        prat.find('a', text: 'edit').click  # procurando no HREF o texto passando e clicando nesse link

        msg = page.driver.browser.switch_to.alert.text  # chamando selenium webdriver, passando a trabalhar no pop-up e gravando o texto na variavel
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'   # validando o texto exibido
    end

end

# usar FIND apenas na busca de um unico elemento

# ALL retorna todos os elementos em um array