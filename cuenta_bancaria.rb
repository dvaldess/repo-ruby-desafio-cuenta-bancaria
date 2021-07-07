class BankAccount
    attr_accessor :userName
    def initialize(userName, accountNumer)
        @userName = userName
        get_number(accountNumer)
    end
    def get_number(number)
        if number.digits.count != 8
            raise RangeError, "Solo 8 digitos"
        else
            @accountNumer = number
        end
    end
    def get_vip(vip)
        if vip == 0 || vip == 1
            @vip = vip
        else
            raise RangeError, "Debes pasar un 0 o un 1"
        end
    end
    def account_number
        "#{self.vip}-#{self.accountNumer}"
    end
end

pp BankAccount.new("Diego", 12345678)

diego = BankAccount.new("Diego", 12345678, 2)
pp diego.account_number