 class CommentUpdateJob < ApplicationJob
  #  queue_as :default
  #
  #  def perform(comment)
  #    # ProductChannel.broadcast_to(comment.product_id,
  #    #   comment: render_comment(comment),
  #    #   average_rating: comment.product.average_rating)
  #     ActionCable.server.broadcast 'product_channel',
  #       comment: render_comment(comment),
  #       average_rating: comment.product.average_rating
  # end
  #
  #  private
  #
  #  def render_comment(comment)
  #    CommentsController.render(partial: 'comments/comment', locals: { comment: comment })
  #  end
 end
