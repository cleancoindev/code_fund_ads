class AdvertisersController < ApplicationController
  def create
    CreateSlackNotificationJob.perform_later text: "<!channel> *Advertiser Form Submission*", message: <<~MESSAGE
      *First Name:* #{advertiser_application_params[:first_name]}
      *Last Name:*  #{advertiser_application_params[:last_name]}
      *Email:*  #{advertiser_application_params[:email]}
      *Company:*  #{advertiser_application_params[:company_name]}
      *Monthly Budget:*  #{advertiser_application_params[:monthly_budget]}
      *Website:*  #{advertiser_application_params[:company_url]}
    MESSAGE
    ApplicantMailer.with(form: advertiser_params.to_h).advertiser_application_email.deliver_later
    redirect_to home_advertisers_path, notice: "Your request was sent successfully. We will be in touch."
  end

  private

    def advertiser_params
      params.require(:form).permit(:first_name, :last_name, :company_name, :company_url, :email, :monthly_budget)
    end
end
