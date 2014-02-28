require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { candidatedetails: @post.candidatedetails, company: @post.company, contactdetails: @post.contactdetails, designation: @post.designation, educationqualification: @post.educationqualification, experience: @post.experience, jobdescription: @post.jobdescription, jobspecification: @post.jobspecification, location: @post.location, role: @post.role, rolecategory: @post.rolecategory, title: @post.title }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { candidatedetails: @post.candidatedetails, company: @post.company, contactdetails: @post.contactdetails, designation: @post.designation, educationqualification: @post.educationqualification, experience: @post.experience, jobdescription: @post.jobdescription, jobspecification: @post.jobspecification, location: @post.location, role: @post.role, rolecategory: @post.rolecategory, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
