

describe 'Mouse Hover', :hovers do   # suite de teste

    before(:each) do
        visit '/hovers'
    end

    it 'Mouse sobre o Blade' do  # caso de teste
       card = find('img[alt=Blade]')   # identificando a imagem pelo atributo 'alt'
       card.hover    # hover é o comando para simular o mousa sobre o elemento

       expect(page).to have_content 'Nome: Blade'   # validando texto q exibe ao colocar o mouse sobre o card
    end

    it 'Mouse sobre o Black Panther' do  # caso de teste
       card = find('img[alt="Pantera Negra"]')   # valor de 'alt' dentro de string quando conter caracteres especiais ou espaço
       card.hover    # hover é o comando para simular o mousa sobre o elemento

       expect(page).to have_content 'Nome: Pantera Negra'   # validando texto q exibe ao colocar o mouse sobre o card
    end

    it 'Mouse sobre o Homem Aranha' do  # caso de teste
        card = find('img[alt="Homem Aranha"]')   # valor de 'alt' dentro de string quando conter caracteres especiais ou espaço
        card.hover    # hover é o comando para simular o mousa sobre o elemento
 
        expect(page).to have_content 'Nome: Homem Aranha'   # validando texto q exibe ao colocar o mouse sobre o card
     end


    after(:each) do
        sleep 2
    end


end