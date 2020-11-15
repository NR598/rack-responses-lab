class Application

  def call(env)
      out = Rack::Response.new

      if Time.now.hour < 12
          out.write "Good Morning!"
      else
          out.write "Good Afternoon!"
      end

      out.finish

  end
end