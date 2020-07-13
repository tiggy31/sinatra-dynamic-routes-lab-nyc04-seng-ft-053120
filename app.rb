require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
     "#{params[:name].reverse}"
    
  end

  get "/square/:number" do
   @result = "#{params[:number].to_i*params[:number].to_i}"
       "#{@result}"
 end

 get "/say/:number/:phrase" do
  @saytimes = "#{params[:phrase]*params[:number].to_i}"
      "#{@saytimes}"
end
  
get "/say/:number/:phrase" do
  @saytimes = "#{params[:phrase]*params[:number].to_i}"
      "#{@saytimes}"
end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
 
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end
end
