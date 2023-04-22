


describe 'Comprar', :amazon do
    before(:each) do
        visit 'https://www.amazon.com.br/'
    end

    it 'Buscar Iphone' do
        fill_in 'twotabsearchtextbox', with: 'Iphone 11'  # escrevendo no campo de busca
        sleep 2
        find('input[type=submit]').click   # clicando para buscar
        sleep 3
        find('img[src=https://m.media-amazon.com/images/I/71iO2R+CLjL._AC_UL320_.jpg').click
        sleep 3

    end


end


# ver na tables_spec.rb como pegar href