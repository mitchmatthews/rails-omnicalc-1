class GamesController < ApplicationController
  def new_square
    render :new_square_calc
  end

  def square_results
    square_params = params.permit(:users_number)
    @the_num = square_params[:users_number].to_f
    @the_result = @the_num * @the_num
    render :square_results
  end

  def new_square_root
    render :new_square_root_calc
  end

  def square_root_results
    square_params = params.permit(:users_number)
    @the_num = square_params[:users_number].to_f
    @the_result = Math.sqrt(@the_num)
    render :square_root_results
  end

  def new_payment
    render :new_payment_calc
  end

  def payment_results
    @APR = params.fetch("user_apr").to_f.round(4)
    @rate = params.fetch("user_apr").to_f/100/12
    @pv = params.fetch("user_pv").to_f.round(2)
    @pv_formatted = sprintf("$%0.2f", @pv).reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    @years = params.fetch("user_years").to_f.round(0)
    @nper = params.fetch("user_years").to_f*12
    @numerator = (@rate*@pv)
    @denominator = (1-((1+@rate)**(-1*@nper)))
    @pmt = (@numerator/@denominator).round(2)
    @pmt_formatted = sprintf("$%0.2f", @pmt).reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    @the_result=@pmt_formatted
    render :payment_results
  end

  def new_random
  render :new_random_calc
  end

  def random_results
  @user_min = params[:user_min].to_f
  @user_max = params[:user_max].to_f
  @the_result = rand(@user_min..@user_max)
  render :random_results
end

  def homepage
    render :welcome
  end
end
