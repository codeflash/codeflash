# Manages Achievements and their public interfaces.
class AchievementsController < ApplicationController
  authorize_resource

  before_action :set_achievement, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Achievements", :achievements_path

  # Lists all achievements in the database.
  #
  # GET /achievements
  # GET /achievements.json
  #
  # @return [String] the HTML/JSON for the achievements page.
  def index
    @achievements = Achievement.all
  end

  # Shows the page for the achievement.
  #
  # GET /achievements/1
  # GET /achievements/1.json
  #
  # @return [String] the HTML/JSON for the achievement
  def show
    @solutions = @achievement.solutions.paginate(page: params[:page], per_page: 10).order('created_at DESC')
    add_breadcrumb @achievement.name, achievement_path(@achievement)
  end

  # Renders a new achievment JSON.
  #
  # GET /achievements/new
  # GET /achievements/new.json
  #
  # @return [String] the HTML/JSON for the new achievement
  def new
    @achievement = Achievement.new
    add_breadcrumb "New Achievement"
  end

  # Edits the values of an achievement.
  #
  # GET /achievements/1/edit
  #
  # @return [String] the HTML/JSON for the achievement edit page
  def edit
    add_breadcrumb "Edit #{@achievement.name}"
  end

  # Creates and saves a new achievement.
  #
  # POST /achievements
  # POST /achievements.json
  #
  # @return [String] the HTML/JSON for the saved achievement
  def create
    @achievement = Achievement.new(achievement_params)

    respond_to do |format|
      if @achievement.save
        format.html { redirect_to @achievement, notice: 'Achievement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @achievement }
      else
        format.html { render action: 'new' }
        format.json { render json: @achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # Updates the values of an achievement.
  #
  # PATCH/PUT /achievements/1
  # PATCH/PUT /achievements/1.json
  #
  # @return [String] the HTML/JSON for the updated achievement resource
  def update
    respond_to do |format|
      if @achievement.update(achievement_params)
        format.html { redirect_to @achievement, notice: 'Achievement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # Deletes an achievement from the database.
  #
  # DELETE /achievements/1
  # DELETE /achievements/1.json
  #
  # @return [String] the HTML/JSON notifying the user that the resource was
  # destroyed
  def destroy
    @achievement.destroy

    respond_to do |format|
      format.html { redirect_to achievements_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_achievement
    @achievement = Achievement.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def achievement_params
    params.require(:achievement).permit(:description, :name, :points, :rendered_description)
  end
end
