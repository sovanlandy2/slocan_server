class Cralwers::FourSquareCrawler
  CLIENT_ID = "E4H5NCQEYKAF0OIG4RQHXUHCQBQHWSFBWT5GYGF11LSTB4FJ"
  CLIENT_SECRET = "OTYBVYXHNOKZEGFT0YPPXP22NI5KF2OCLH1M2ZURRNZZ4RNO"

  attr_accessor :client

  def initialize()
    @client = Foursquare2::Client.new(:client_id => 'your_client_id', :client_secret => 'your_secret')
  end

  def perform
    @client
  end
end 