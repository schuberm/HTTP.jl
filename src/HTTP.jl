# HTTP.jl
# Authors: Dirk Gadsden

module HTTP
  
  type Request
    method::String
    path::String
    headers::Dict{String,Any}
    cookies::Dict{String,Any}
    version::String
    data::String
  end
  Request() = Request("", "", Dict{String,Any}(), Dict{String,Any}(), "", "")
  
  type Response
    status::Integer
    body::String
    headers::Dict{String,Any}
  end
  Response(status::Integer, body::String) = Response(status, body, Dict{String,Any}())
  Response() = Response(200, "")
  
  export Request, Response
end

#include("BasicServer.jl")