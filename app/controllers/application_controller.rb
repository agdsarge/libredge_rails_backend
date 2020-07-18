class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, KEY, 'HS256')
    end

    def decode_token(token)
       JWT.decode(token, KEY, true, {algorithm: 'HS256'})[0]
    end


end
