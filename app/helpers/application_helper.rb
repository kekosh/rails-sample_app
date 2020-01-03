module ApplicationHelper
    
    #rubyでは、他のモジュールを読み込んで利用する場合に"include xxxx"として
    #モジュールを読み込むことができるが、railsでは自動的に「Helper」モジュールを
    #読み込むため、別途includeする必要はない。(=>module ApplicationHelperの効果)
    
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
