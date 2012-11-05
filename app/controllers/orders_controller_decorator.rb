Spree::OrdersController.class_eval do
  def show
    @order = Spree::Order.find_by_number!(params[:id])

    respond_with(@order) do |format|
      format.pdf do
        template = params[:template] || "invoice"
        render :layout => false , :template => "spree/shared/invoices/invoice.pdf.prawn"
      end
    end
  end
end