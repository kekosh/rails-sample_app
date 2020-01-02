module ApplicationHelper
    
    #ページごとの完全なタイトルを返す
    def full_title(page_title="")
        base_title = "Ruby on Rails Tutorial Sample App"
        
        #erbからの呼び出し時にprovideによるタイトル設定がなかった場合
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
end
