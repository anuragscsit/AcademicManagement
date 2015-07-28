class AdmissionsController < ApplicationController
	
	def index
		@admissions = Admission.all
		respond_to do |format|
      format.html
      format.pdf do
         pdf = ReportPdf.new(@admissions)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      end
    end
	end

	def new
		@admission = Admission.new
	end

	def create
		@admission = Admission.new(admission_params)
		if @admission.save
      redirect_to @admission
    else
      render 'new'
    end
	end

	def show
		@admission = Admission.find(params[:id])
	end

	def edit
		@admission = Admission.find(params[:id])
	end

	def update
		 @admission = Admission.find(params[:id])
 
    if @admission.update(admission_params)
      redirect_to @admission
    else
      render 'edit'
    end
	end

	def destroy
    @admission = Admission.find(params[:id])
    @admission.destroy
 
    redirect_to admissions_path
  end

	private

		def admission_params
			params.require(:admission).permit(:first_name, :middle_name, :last_name, :father_name, :mother_name, :date_of_birth, :age, :contact, :email)
		end

end
