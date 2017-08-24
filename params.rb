require "pp"

def params(*args)
  pp args
end


params :article, url: "path"
