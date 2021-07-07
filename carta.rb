class Card # La clase es un plantilla para crear objetos
    attr_accessor :number, :kind # Es lo mismo que los getters y setters, en este caso lee y escribe
    def initialize(number, kind) # Definiendo el metodo constructor
        get_number(number) # Definiendo un metodo de instancia, esto con el objetivo de validar el numero que se ingrese
        @kind = kind # @ Variable de instancia o variable local
    end
    def get_number(number) # Definiendo un Metodo
        # @number = number if number <= 13 && number >= 1
        # (number <= 13 && number >= 1) ? @number = number : raise "Solo numeros de 1 a 13"
        if number <= 13 && number >= 1
            @number = number
        else
            raise "Solo numeros de 1 a 13"
        end
    end
    def get_kind(kind)
        # (%w[C D E T].include?(kind)) ? @kind = kind : raise "Solo pintas C, D, E y T"
        if %w[C D E T].include?(kind)
            @kind = kind
        else
            raise "Solo pintas C, D, E y T"
        end
    end
    def to_s # Este metodo cambia la forma de como se va a imprimirse, el to_s por defecto muestra el id del objeto.
        "Numero: #{self.number}, Pinta: #{self.kind}"
    end
end

carta = Card.new(13, "F") # Asignando a una varibale la instancia de la clase Card
pp carta # Imprimiendo la variable

arr = []
kinds = %w[C D E T]
5.times do |i|
    arr << Card.new(rand(1..13), kinds.sample)
end

pp arr