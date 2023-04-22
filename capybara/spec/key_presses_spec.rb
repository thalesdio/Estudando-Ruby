

describe 'Teclado', :teclado do
    before(:each) do
        visit '/key_presses'
    end

    it 'enviando teclas com array' do
        teclas = %i[tab space escape enter shift control alt]  # criando array de simbolos
        teclas.each do|t|
            find('#campo-id').send_keys t  # identificando o campo de texto e simulando ação do teclado 
            expect(page).to have_content 'You entered: ' + t.to_s.upcase  # validação conforme opção do array q foi convertida em String e em caixa alta
            sleep 2
        end

        end

        it 'enviando teclas' do
        find('#campo-id').send_keys :space  # identificando o campo de texto e simulando ação do teclado 
        sleep 1
        expect(page).to have_content 'You entered: SPACE'  # validação
        sleep 3
        end

        it 'enviando letras' do
            letras = %w[t h a l e s d i o]  # criando array de letras
            letras.each do |l|
                find('#campo-id').send_keys l  # identificando o campo de texto e simulando ação do teclado 
                expect(page).to have_content 'You entered: ' + l.to_s.upcase  # validação conforme opção do array q foi convertida em String e em caixa alta
                sleep 2
        end

    end
end