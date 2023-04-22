
# Lançamento de exceções ou tratamento de erros, semelhante ao try-catch

begin  # Tentar algo
   file = File.open('./oi.txt')  # File.open para abrir um arquivo. './' para pegar a raiz do arquivo
   if file
    puts file.read
   end

rescue Exception => e  # Obter possivel erro
    puts e
end