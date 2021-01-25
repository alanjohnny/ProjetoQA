class Users

    include HTTParty
    require_relative '../hooks/users_hooks'
    base_uri "https://60077ab7309f8b0017ee4826.mockapi.io/api/v1"
    
    def initialize(body)
      @options = {:body => body}
    end
    
    def postUsers
        self.class.post("/users", @options)
    end

end