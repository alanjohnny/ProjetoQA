class Users

    include HTTParty
    require_relative '../hooks/users_hooks'
    base_uri "https://60077ab7309f8b0017ee4826.mockapi.io/api/v1"

    def initialize(body)
      @options = {:body => body}
      @optionsNoBody = {}
    end

    #Inclusão
    def postUsers
        self.class.post("/users", @options)
    end

    #Consulta
    def getUsers (id)
        self.class.get("/users/#{id}", @optionsNoBody)
    end

    #Alteração
    def putUsers (id)
        self.class.put("/users/#{id}", @options)
    end

    #Exclusão
    def deleteUsers (id)
        self.class.delete("/users/#{id}", @optionsNoBody)
    end

end
