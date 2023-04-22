

describe 'Logar no webadmin', :technos do
    before(:each) do
        visit 'https://admin.dev.smart.grupotechnos.com.br/'
    end

    it 'Buscar Iphone' do
        find('input[id=username]').set 'thales.silva@radixeng.com' 
        sleep 1
        find('input[id=password]').set 'admin123' 
        sleep 1
        find('input[type=submit]').click 
        sleep 8
    end


end