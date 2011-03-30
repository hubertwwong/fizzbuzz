class FizziesController < ApplicationController
  # GET /fizzies
  # GET /fizzies.xml
  def index
    @fizzies = Fizzy.all
    @fizz = Fizzy.fizz

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fizzies }
    end
  end

  # GET /fizzies/1
  # GET /fizzies/1.xml
  def show
    @fizzy = Fizzy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fizzy }
    end
  end

  # GET /fizzies/new
  # GET /fizzies/new.xml
  def new
    @fizzy = Fizzy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fizzy }
    end
  end

  # GET /fizzies/1/edit
  def edit
    @fizzy = Fizzy.find(params[:id])
  end

  # POST /fizzies
  # POST /fizzies.xml
  def create
    @fizzy = Fizzy.new(params[:fizzy])

    respond_to do |format|
      if @fizzy.save
        format.html { redirect_to(@fizzy, :notice => 'Fizzy was successfully created.') }
        format.xml  { render :xml => @fizzy, :status => :created, :location => @fizzy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fizzy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fizzies/1
  # PUT /fizzies/1.xml
  def update
    @fizzy = Fizzy.find(params[:id])

    respond_to do |format|
      if @fizzy.update_attributes(params[:fizzy])
        format.html { redirect_to(@fizzy, :notice => 'Fizzy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fizzy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fizzies/1
  # DELETE /fizzies/1.xml
  def destroy
    @fizzy = Fizzy.find(params[:id])
    @fizzy.destroy

    respond_to do |format|
      format.html { redirect_to(fizzies_url) }
      format.xml  { head :ok }
    end
  end
end
