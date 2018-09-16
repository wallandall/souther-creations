class ProductChannel < ApplicationCable::Channel
  def subscribed
<<<<<<< HEAD
     #stream_from "product_channel"
=======
    # stream_from "product_channel"
>>>>>>> Test
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def listen(data)
    stop_all_streams
    stream_for data["product_id"]
  end
end
