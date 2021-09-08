class SessionsController < ApplicationController
  # GET
  # GET /sessions or /sessions.json
  def index
    # index.html.erb
    @sessions = Session.all
  end

  # GET /sessions/1 or /sessions/1.json
  def show
    # show.html.erb
    @session = Session.find(params[:id])
  end

  # GET /sessions/new
  def new
    # solved error : param is missing or the value is empty: session
    @session = Session.new
    # (minutes: params[:minutes])
    # (session_params)
  end

  def start
    @start = Time.now
    redirect_to action: "index", params: { start: @start }
  end

  def stop
    @stop = Time.now
    @duration = (@stop.to_time.to_i - params[:start].to_time.to_i)/60
    # Inside a controller action, Rails can access url data through params, e.g. params[:start]
    redirect_to action: "index", params: { start: @start, stop: @stop, minutes: @duration }
    # redirect_to action: "new", params: { session: { minutes: @duration } }
  end

  # GET /sessions/1/edit
  def edit
    @session = Session.find(params[:id])
  end

  # POST /sessions or /sessions.json
  def create
    @session = Session.new(session_params)

    respond_to do |format|
      if @session.save
        format.html { redirect_to @session, notice: "Session was successfully created." }
        # format.json { render :show, status: :created, location: @session }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessions/1 or /sessions/1.json
  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to @session, notice: "Session was successfully updated." }
        # format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        # format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1 or /sessions/1.json
  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    respond_to do |format|
      format.html { redirect_to sessions_url, notice: "Session was successfully destroyed." }
      # format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_session
    @session = Session.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def session_params
    params.require(:session).permit(:language, :project, :minutes, :buddies)
  end

end