

describe 'Select2', :select2 do  # suite de teste

    describe('single', :single) do
    before(:each) do
        visit '/apps/select2/single.html'
    end

    it 'Seleção de um ator por nome' do
        find('.select2-selection--single').click  # clicando no elemento de lista para exibir as opções
        sleep 1
        find('.select2-results__option', text: 'Kevin James').click  # clicando na opção dentro da lista
        sleep 2
    end

    it 'busca e seleciona' do
     find('.select2-selection--single').click  # clicando no elemento de lista para exibir as opções
     sleep 1
     find('.select2-search__field').set 'Adam Sandler'  # usando campo de busca na lista
     sleep 2
     find('.select2-results__option').click  # clicando na opção buscada
     sleep 4
    end

end

describe('multiple', :multi) do

    before(:each) do
        visit '/apps/select2/multi.html'
    end

    def selecione(ator)  # metodo
        find('.select2-selection--multiple').click  # clicando no elemento de lista para exibir as opções
        find('.select2-search__field').set ator  # usando campo de busca na lista
        find('.select2-results__option').click  # clicando na opção buscada
    end


    it 'seleciona mais de uma opção' do
        selecione('Jim Carrey')   # selecionando opções utilizando o método
        selecione('Owen Wilson')
        sleep 3
    end

    it 'seleciona com array' do
        atores = ['Jim Carrey', 'Owen Wilson', 'Adam Sandler']  # criando array com as opções 
        atores.each do |a|
            selecione(a)  # percorrendo o array selecionando as opções
        end
        sleep 4

    end

end

end