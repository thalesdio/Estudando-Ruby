
 
describe 'Dropdown list', :dropdown do  # tag para ser usado no console
    it 'item especifico simples' do  # busca o elemento pelos IDs encontrados ao inspecionar pagina, funciona apenas com IDs
        visit '/dropdown'
   # select('Opção', from: 'elemento')  exemplo
   select('Loki', from: 'dropdown')  # IDs encontrados ao inspecionar pagina, funciona apenas com IDs
   sleep 4
    end

    it 'item especifico usando find' do  # busca elementos quando sistema nao trabalha com IDs
        visit '/dropdown'
        drop = find('.avenger-list')  # buscando as opções da lista utilizando a classe do elemento inspecionado e guardando na variavel
        drop.find('option', text: 'Tony Stark').select_option  # manda buscar elementos do tipo option e o valor do texto é o valor passado, e seleciona tal opção
        sleep 4
    end

    it 'qualquer item', :sample do  # busca e seleciona aleatoriamente
        visit '/dropdown'
        drop = find('.avenger-list')  # buscando as opções da lista utilizando a classe do elemento inspecionado e guardando na variavel
        drop.all('option').sample.select_option  # traz todos os elementos em um array e seleciona aleatoriamente dentro desse array

    end

end