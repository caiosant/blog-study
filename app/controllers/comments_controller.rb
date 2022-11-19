class CommentsController < ApplicationController
    def create
        comment = Comment.new(comments_params)

        if comment.save
            redirect_to post_url(comment.post.id), notice: "O seu comentário foi enviado."
        end
    end

    private

    def comments_params
        params.require(:comment).permit(:post_id, :author, :body)
    end
end