

describe "My First script" do  # suite de testes
    it "Visit the page" do   # caso de teste
        visit "/"  # método do capybara para visitar pagina web
        sleep 5
        expect(page.title).to eql "Training Wheels Protocol"  # validação do Rspec
    end
end

# Capybara manipula o browser e o Rspec faz as validações