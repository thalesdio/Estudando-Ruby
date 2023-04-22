
# Ruby é orientada a objeto, pois no Ruby tudo são objetos

# Classe tem atributos e métodos (caracteristicas e açoes, respectivamente)


# escrevendo a classe
class Carro 
    attr_accessor :nome   # descrevendo atributos para dentro dda classe

    def Ligar   # metodo
        puts 'Carro ligado'
    end
end

corolla = Carro.new 
corolla.nome = 'Corolla'  # inserindo dado no atributo
puts corolla.nome
corolla.Ligar   # chamando o metodo q ta dentro da classe