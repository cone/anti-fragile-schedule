require 'rails_helper'

describe TasksController do
  let!(:task) { Task.create }

  describe 'GET index' do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it 'assigns @tasks' do
      get :index
      expect(assigns[:tasks]).to eq([task])
    end
  end

  describe 'GET new' do
    it "should get new task page" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe 'POST create' do
    it "should create task" do
      assert_difference 'Task.count', 1 do
        post :create, params: { task: { description: 'desc' } }
      end

      assert_redirected_to task_url(Task.last)
    end
  end

  describe 'GET show' do
    it "should show task" do
      get :show, params: { id: task.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'GET edit' do
    it "should get edit page for task" do
      get :edit, params: { id: task.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'POST update' do
    it "should update task" do
      assert_difference 'Task.count', 1 do
        post :create, params: { task: { id: task.id, description: 'desc' } }
      end

      assert_redirected_to task_url(Task.last)
    end
  end

  describe 'POST delete' do
    it "should delete task" do
      assert_difference 'Task.count', -1 do
        delete :destroy, params: { id: task.id }
      end
    end
  end
end