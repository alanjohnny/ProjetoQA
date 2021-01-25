Before '@users' do 

    @nome =     Faker::Name.name
    @agencia =  Faker::Number.number(digits: 5) #Faker::Alphanumeric.alpha(number: 6, min_numeric: 5)
    @conta =    Faker::Bank.account_number(digits: 12)

    @body = {
        "nome":     @nome,
        "agencia":  @agencia,
        "conta":    @conta
    }

    @users = Users.new(@body)

end