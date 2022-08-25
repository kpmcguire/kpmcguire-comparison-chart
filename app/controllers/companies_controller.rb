class CompaniesController < ApplicationController
  http_basic_authenticate_with name: "kevin", password: ENV['HTTP_BASIC_PASSWORD']
  
  def index
    @companies = Company.all
  end
  
  def show
    @company = Company.find(params[:id])
  end

  def new
    @last = Company.last
    @company = Company.new
    @plans = Plan.all
  end

  def edit
    @company = Company.joins(:plan).where(plan: {title: "Business"})
    @plans = Plan.all
    @enterprise_plan = Plan.where(title: "Enterprise")
  end
  
  def home
    @company = Company.joins(:plan).where(plan: {title: "Business"}).first_or_create
    @plans = Plan.all.sort_by &:id
    @enterprise_plan = Plan.where(title: "Enterprise")
  end

  def update
    @company = Company.joins(:plan).where(plan: {title: "Business"}).first_or_create
  
    respond_to do |format|    
      if @company.update(company_params)
        format.turbo_stream { flash.now[:notice] = "You are now using the #{@company.plan.title.capitalize} plan." }
        format.html {redirect_to root_url, notice: 'Company was successfully updated'}
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace("company_#{helpers.dom_id(@company)}", partial: "form", locals: { company: @most_recent_company }) }
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  

  end

  def create
    @company = Company.new(company_params)
    
    respond_to do |format|    
      if @company.save
        format.turbo_stream
        format.html {redirect_to new_company_path(), notice: 'Company was successfully created'}
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace("company_#{helpers.dom_id(@company)}", partial: "form", locals: { company: @most_recent_company }) }
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def company_params
    params.require(:company).permit(:plan_id)
  end
end
