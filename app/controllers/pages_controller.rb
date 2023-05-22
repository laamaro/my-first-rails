class PagesController < ApplicationController

  def contact
    @students = ["Nat", "Walter", "Erick", "Victor"]

    if params[:student_name]
      @students = @students.select { |student| student.start_with?(params[:student_name]) }
    end

    if params[:student_length]
      @students = @students.select { |student| student.length > params[:student_length].to_i }
    end
  end

  def home
  end

  def about
    @date = Date.today
  end
end
