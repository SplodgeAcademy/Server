class MultipleChoicesController < ApplicationController
    before_action :set_multiple_choice, only: %i[ show edit update destroy ]
    # before_action :authenticate_user!, except: %i[ show index ]

    # GET /multiple_choices or /multiple_choices.json
    def index
        @multiple_choices = MultipleChoice.all
    end

    # GET /multiple_choices/1 or /multiple_choices/1.json
    def show
    end

    # GET /multiple_choices/new
    def new
        @multiple_choice = MultipleChoice.new
    end

    # GET /multiple_choices/1/edit
    def edit
    end

    # POST /multiple_choices or /multiple_choices.json
    def create
        @multiple_choice = MultipleChoice.new(multiple_choice_params)

        respond_to do |format|
            if @multiple_choice.save
                format.html { redirect_to @multiple_choice, notice: "Multiple choice was successfully created." }
                format.json { render :show, status: :created, location: @multiple_choice }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @multiple_choice.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /multiple_choices/1 or /multiple_choices/1.json
    def update
        respond_to do |format|
            if @multiple_choice.update(multiple_choice_params)
                format.html { redirect_to @multiple_choice, notice: "Multiple choice was successfully updated.", status: :see_other }
                format.json { render :show, status: :ok, location: @multiple_choice }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @multiple_choice.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /multiple_choices/1 or /multiple_choices/1.json
    def destroy
        @multiple_choice.destroy!

        respond_to do |format|
            format.html { redirect_to multiple_choices_path, notice: "Multiple choice was successfully destroyed.", status: :see_other }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiple_choice
        @multiple_choice = MultipleChoice.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def multiple_choice_params
        params.expect(multiple_choice: [ :question, :answer, :a, :b, :c, :d ])
    end
end
