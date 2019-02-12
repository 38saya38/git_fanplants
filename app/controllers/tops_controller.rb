class TopsController < ApplicationController
    def index
     @columns = []
    end
    
    def search
    # 検索フォームのキーワードをあいまい検索して、情報を取得する
    @columns = []
    end
end
