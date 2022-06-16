require 'faker'

class GeneradorPalabras
    def self.generar 
        azar = rand(0..1)
        if azar == 0
            return generar_palabra
        else 
            return generar_palabra_faker
        end
    end 
private
    def self.generar_palabra
        palabra_secreta = ['ruby','html', 'javascript', 'css','programa' ,'vscode','computador' ,'github','cesar','archivo','carpeta','terminal','variable','indentar','metodo']
        posicion = rand(0..palabra_secreta.length-1)
        return palabra_secreta[posicion]
    end
    def self.generar_palabra_faker
        return Faker::ProgrammingLanguage.name.downcase
    end
#self.generar_palabra
#puts self.generar_palabra
#puts self.generar
end