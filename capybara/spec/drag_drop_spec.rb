

describe 'Drag and Drop DnD', :drop do  # suite de teste
    before(:each) do
        visit '/drag_and_drop'
    end

    it 'Homem aranha no time Stark' do  # caso de teste
       stark = find('.team-stark .column')  # identificando a div destino da imagem
       cap = find('.team-cap .column')  # identificando a div origem da imagem
       
       spiderman = find('img[alt$=Aranha]')  # utilizando '$' para pesquisar uma palavra que termine com o termo passado, no caso 'Aranha'
       spiderman.drag_to stark  # arrastar o elemento spiderman para o elemento stark

       sleep 3

       expect(stark).to have_css 'img[alt$=Aranha]'  # validando se a imagem chegou ao destino utilizando CSS
       expect(cap).not_to have_css 'img[alt$=Aranha]'   # validando se a imagem não esta mais na origem utilizando CSS

    end

end