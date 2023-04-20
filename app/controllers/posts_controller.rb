=begin
The PostsController has 5 actions: index, show, new, create, and destroy. 
The index action lists all the blog posts,
 the show action shows a single blog post, 
 the new action renders a form for creating a new blog post,
 the create action creates a new blog post, 
 the edit action renders a form for editing a blog post and 
 the destroy action destroys the blog post. 
=end

class PostsController < ApplicationController
    def index
        @posts = Post.all 
    end

    def show
        @post = Post.find(params[id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post, notice: 'Post was successfully created!'
        else
            render :new
        end
    end

    def edit 
        @post =Post.find(params[id])
    end

    def update
        @post = Post.find(params[id])
        if @post.update9post_params0
            redirect_to @post, notice: 'Post was successfully updated.'
        else 
            render :edit
        end
    end

        def destroy
            @post = Post.find(params[id])
            @post.destroy

            redirect_to posts_path, notice: 'Post was successfully destroyed.'
        end

        private 
        def post_params
            params.require (:post) .permit(:title,:body)
        end
    end
    
    