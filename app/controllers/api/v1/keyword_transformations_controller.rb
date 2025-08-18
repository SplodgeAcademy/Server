class Api::V1::KeywordTransformationsController < ApiController
    before_action :set_keyword_transformation, only: %i[ show edit update destroy ]

    # GET /keyword_transformations or /keyword_transformations.json
    def index
        @keyword_transformations = KeywordTransformation.all

        # Return all keyword transformations
        render json: @keyword_transformations
    end

    # GET /keyword_transformations/1 or /keyword_transformations/1.json
    def show
    end

    # GET /keyword_transformations/new
    def new
        @keyword_transformation = KeywordTransformation.new
    end

    # GET /keyword_transformations/1/edit
    def edit
    end

    # POST /keyword_transformations or /keyword_transformations.json
    def create
        @keyword_transformation = KeywordTransformation.new(keyword_transformation_params)

        respond_to do |format|
            if @keyword_transformation.save
                format.html { redirect_to @keyword_transformation, notice: "Keyword transformation was successfully created." }
                format.json { render :show, status: :created, location: @keyword_transformation }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @keyword_transformation.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /keyword_transformations/1 or /keyword_transformations/1.json
    def update
        respond_to do |format|
            if @keyword_transformation.update(keyword_transformation_params)
                format.html { redirect_to @keyword_transformation, notice: "Keyword transformation was successfully updated.", status: :see_other }
                format.json { render :show, status: :ok, location: @keyword_transformation }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @keyword_transformation.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /keyword_transformations/1 or /keyword_transformations/1.json
    def destroy
        @keyword_transformation.destroy!

        respond_to do |format|
            format.html { redirect_to keyword_transformations_path, notice: "Keyword transformation was successfully destroyed.", status: :see_other }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyword_transformation
        @keyword_transformation = KeywordTransformation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def keyword_transformation_params
        params.expect(keyword_transformation: [ :question, :answer, :keyword, :prompt ])
    end
end
