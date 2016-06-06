=begin


Checkpoint 32:

1. NEW post (def new)
2. CREATE post (def create, form_for)
3. SHOW post (def show) in PostsController
4. SHOW post in views/posts/show.html.erb
4. FLASH MESSAGES
  Q: Where do you put them and why?
  A: For this project, in views/layout/application/html.erb because all
    views might have a flash message






PostsController:

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

      if @post.save
        flash[:notice] = "Post was saved successfully."
        redirect_to @post
      else
        flash.now[:alert] = "There was an error saving the post. Please try again."
        render :new
      end

  end


../views/posts/new.html.erb

  <h1>New Post</h1>

  <div class="row">
    <div class="col-md-4">
      <p>Guidelines for posts</p>
      <ul>
        <li>Make sure it rhymes.</li>
        <li>Don't use the letter "A".</li>
        <li>The incessant use of hashtags will get you banned.</li>
      </ul>
    </div>
    <div class="col-md-8">

      <%= form_for @post do |f| %>
        <div class="form-group">
          <%= f.label :title %>
          <%= f.text_field :title, class: 'form-control', placeholder: "Enter post title" %>
        </div>

        <div class="form-group">
          <%= f.label :body %>
          <%= f.text_area :body, rows: 8, class: 'form-control', placeholder: "Enter post body" %>
        </div>

        <div class="form-group">
          <%= f.submit "Save", class: 'btn btn-success' %>
        </div>

      <% end %>

    </div>
  </div>













=end
