class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new(2012,11,11,9,30)

    if time.hour > 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end

end
