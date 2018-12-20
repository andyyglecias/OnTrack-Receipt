class Api::ReceiptsController < ApplicationController

  def index
    @receipt = Receipt.all
    @receipt = @receipt.order(:id => :asc)
    render "index.json.jbuilder"
  end

  def show
    @receipt = Receipt.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @receipt = Receipt.find_by(id: params[:id])
    @receipt.merchant = params[:merchant] || @receipt.merchant
    @receipt.price = params[:price] || @receipt.price
    @receipt.image = params[:image] || @receipt.image
    @receipt.policy_exp_date = params[:policy_exp_date] || @receipt.policy_exp_date
    @receipt.priority = params[:priority] || @receipt.priority
    if @receipt.save
      render "show.json.jbuilder"
    else render json: {errors: receipt.errors.full_messages}, status: :unprocessed_entity
    end
  end

  def create
    @receipt = Receipt.new(
    user_id: 2,
    merchant: params[:input_merchant],
    price: params[:input_price],
    image: params[:input_image],
    policy_exp_date: params[:input_policy_exp_date],
    priority: params[:input_priority],
    category_id: params[:category_id],
    )
    if @receipt.save
      render "show.json.jbuilder"
    else
      render json: {errors: @receipt.errors.full_messages}, status: :unprocessed_entity
    end
  end

  def destroy
    @receipt = Receipt.find_by(id: params[:id])
    @receipt.destroy
    render json: {message: "Receipt successfully destroyed!"}
  end

  def sendtext
    @receipt = Receipt.find_by(id: params[:id])
    # if @receipt.policy_exp_date == @receipt.policy_exp_date
    #   render json: {}
    # end
    # Find the receipt with an id of params[:id]

    # put your own credentials here
    account_sid = ENV["account_sid"]
    auth_token = ENV["auth_token"]
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token
    # @client.api.account.texts.create(
    #   from: '+12242689350',
    #   to: '+12242454999',
    #   url: 'https://demo.twilio.com/welcome/sms/reply/'
    # )
    message = @client.messages
      .create(
         body: "#{@receipt.merchant} $#{@receipt.price} return policy expires 1 week from now",
         from: '+12242689350',
         to: '+12242454999'
       )
    render json: {message: "Message sent!"}
  end
end