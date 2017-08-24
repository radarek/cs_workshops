require 'digest'

md5 = Digest::MD5.file '/etc/hosts'
puts md5.hexdigest
