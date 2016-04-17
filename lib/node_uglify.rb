require "node_uglify/version"
require 'open3'

class NodeUglify
  def compress(input)
    output = ''
    Open3.popen3('uglifyjs') do |i, o, t|
      i.puts input
      i.close
      while line = o.gets
        output += line
      end
    end
    output
  end
end
