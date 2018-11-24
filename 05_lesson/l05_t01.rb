class Player
    def info
        #name хранит имя игрока
        #ready хранит true/false в зависимости от того, готов игрок или нет
        #character_fraction хранит цвет фигуры
        #first_turn_player хранит имя игрока, который играет за белых
    end
    
    def name
        @name
        puts "Выводит имя игрока"
    end
    
	def ready_to_start
	    @ready
		puts "Сообщает на сервер (и/или другим игрокам) о том, что игрок готов начинать игру, как только появится соперник"
	end
	
	def fraction
	    @fraction
	    puts "Сообщает, на чьей стороне играет игрок: белые или черные"
	end
	
	def first_turn
	    @firs_turn_player
	    puts "Сообщает, какой игрок ходит первым"
	end
end

class Piece
    def info
        #character хранит название фигуры
        #character_fraction хранит цвет фигуры
        #active хранит true/false в зависимости от того, ходила ли фигура
        #length хранит длину фигуры в клетках
        #direction хранит направление движения клетки
    end 
    def character
        @character
        puts "Сообщает, какая фигура по ценности: ладья, слон и т.д."
    end
    def character_fraction
        @character_fraction
        puts "Cообщает цвет фигуры"
    end
    def turn_active
        @active
        puts"Сообщает, может ли ходить фигура"
    end
    def length
        @length
        puts "Сообщает длину хода для фигуры в клетках"
    end 
    def direction
        @direction
        puts "Сообщает направление, по которому можнт идти клетка"
    end
end

class Game
    def info
        #turn хранит имя игрока, который ходит сейчас
        #game_over хранит true/false в зависимости от того, закончилась ли игра
        #amount_of_turns хранит кол-во ходов
        #time хранит сколько секнуд прошло с начала хода
        #eaten хранит сколько было фигур уничтожено
    end 
    def turn 
        @turn
        puts"Сообщает, какой игрок сейчас ходит"
    end 
    def game_over
        @game_over
        puts "Cообщает, объявлен ли кому-либо шах и мат"
    end 
    def amount_of_turns
        @amount
        puts "Сообщает количество ходов"
    end 
    def time
        @time 
        puts "Сообщает, сколько секунд прошло с начала хода"
    end 
    def eaten
        @eaten
        puts "Cообщает, сколько фигур было уничтожено"
    end 
end 