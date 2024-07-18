class PagesController < ApplicationController

  def square
    render({:template => "pages_templates/square"})
  end
  
  def square_results

    @num = params.fetch("number").to_f

    @result = @num ** 2
    render({:template => "pages_templates/square_results"})
  end

  def square_root
    render({:template => "pages_templates/square_root"})
  end

  def square_root_results
    @num = params.fetch("user_number").to_f

    @result = @num ** 0.5
    
    render({:template => "pages_templates/square_root_results"})
  end

  def payment
    render({:template => "pages_templates/payment"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    rate = (@apr/100)/12
    @time = params.fetch("user_years").to_i
    term = @time * 12
    @pv = params.fetch("user_pv").to_f

    @num = rate * @pv
    @den = 1 - (1+rate) ** (-term)

    @result = @num/@den
    render({:template => "pages_templates/payment_results"})
  end

  def random
    render({:template => "pages_templates/random"})
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f

    @result = rand(@min..@max)

    render({:template => "pages_templates/random_results"})
  end
end
