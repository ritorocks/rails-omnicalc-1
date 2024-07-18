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
    render({:template => "pages_templates/payment_results"})
  end

  def random
    render({:template => "pages_templates/random"})
  end

  def random_results
    render({:template => "pages_templates/random_results"})
  end
end
