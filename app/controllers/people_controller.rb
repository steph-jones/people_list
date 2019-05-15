class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    # params = { id: "6" }
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to people_path
    else
      render :edit
    end
  end


  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path
    else
      #render :new, :alert => "Make sure you give a number for age."
      #flash[:notice] = "Make sure you give a number for age."
      render :new
    end
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  private
    def person_params
      params.require(:person).permit(:title, :first_name, :last_name,
         :age, :hair_color, :eye_color, :gender, :planet, :hogwarts_house, :alive)
    end
end

