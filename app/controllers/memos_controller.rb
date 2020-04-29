class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def new
    @form = Form::MemoCollection.new
  end

  def create
    @form = Form::MemoCollection.new(memo_collection_params)
    if @form.save
      redirect_to new_memo_path
    else
      render :new
    end
  end

  private
    def memo_collection_params
      params
        .require(:form_memo_collection)
        .permit(memos_attributes: :title)
    end
end
