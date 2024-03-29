class UfsController < ApplicationController
  # GET /ufs
  # GET /ufs.json
  def index
    @ufs = Uf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ufs }
    end
  end

  # GET /ufs/1
  # GET /ufs/1.json
  def show
    @uf = Uf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @uf }
    end
  end

  # GET /ufs/new
  # GET /ufs/new.json
  def new
    @uf = Uf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @uf }
    end
  end

  # GET /ufs/1/edit
  def edit
    @uf = Uf.find(params[:id])
  end

  # POST /ufs
  # POST /ufs.json
  def create
    @uf = Uf.new(params[:uf])

    respond_to do |format|
      if @uf.save
        format.html { redirect_to @uf, :notice => 'Uf was successfully created.' }
        format.json { render :json => @uf, :status => :created, :location => @uf }
      else
        format.html { render :action => "new" }
        format.json { render :json => @uf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ufs/1
  # PUT /ufs/1.json
  def update
    @uf = Uf.find(params[:id])

    respond_to do |format|
      if @uf.update_attributes(params[:uf])
        format.html { redirect_to @uf, :notice => 'Uf was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @uf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ufs/1
  # DELETE /ufs/1.json
  def destroy
    @uf = Uf.find(params[:id])
    @uf.destroy

    respond_to do |format|
      format.html { redirect_to ufs_url }
      format.json { head :ok }
    end
  end
end
