class TopsController < ApplicationController
    def index
        @tops = Column.order('id ASC').limit(6)
    end
    
    def contact
        
    end
    
    def confirm
         # 入力値のチェック
      @top = Top.new(params[:top])
      if @top.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
      else
      # NG。入力画面を再表示
      render :action => 'index'
      end
    end
    
    def thanks
    end
    
    def about
    end
end
