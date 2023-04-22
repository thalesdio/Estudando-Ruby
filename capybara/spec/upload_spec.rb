
describe 'Upload', :upload do   # suite de teste
    before(:each) do
        visit '/upload'
        @archive = Dir.pwd + '/spec/fixtures/teste.txt'  # metodo PWD retorna caminho do diretorio do projeto em execução
        @image = Dir.pwd + '/spec/fixtures/imagem.png'
    end

    it 'Subindo arquivo de texto' do 
        attach_file('file-upload', @archive) # passa o id do campo inspecionado e a variavel contendo o arquivo q sera upado
        #find('input[value=Upload]').click  # passa o 'value' do botão inspecionada

        click_button 'Upload'  # clicando no botão passando passa o 'value'
        div_archive = find('#uploaded-file')  # guardando na variavel o div_id do resultado
        expect(div_archive.text).to eql 'testes.txt'  # comparando o resultado com o resultado esperado
    end

    it 'Subindo imagem', :upload_image do
        attach_file('file-upload', @image)  # passa o id do campo inspecionado e a variavel contendo o arquivo q sera upado
        click_button 'Upload'  # clicando no botão passando passa o 'value'
        img = find('#new-image')  # guardando na variavel o a imagem enviada e exibida na inspeção
        expect(img[:src]).to include '/uploads/imagem.png'  # comparando o resultado com o resultado esperado
    end

    after(:each) do
        sleep 3
    end

end