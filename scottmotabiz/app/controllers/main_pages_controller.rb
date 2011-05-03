

class MainPagesController < ActionController::Base
  def home
    #bacchus_rss
    #wii_rss
    @posts = Post.find(:all, :order => "id desc")
  end

  def about
    @posts = Post.find(:all, :order => "id desc")

  end

  def payroll
    @posts = Post.find(:all, :order => "id desc")

  end

  def quickbooks_consulting
    @posts = Post.find(:all, :order => "id desc")

  end
  
  def bookkeeping
    @posts = Post.find(:all, :order => "id desc")

  end

  def tax_preparation
    @posts = Post.find(:all, :order => "id desc")

  end


  def shop_online
    @posts = Post.find(:all, :order => "id desc")

  end

  def contact
    @posts = Post.find(:all, :order => "id desc")


  end

  def gallery

  end

  def bacchus_rss
   # @feed_bacchus = FeedTools::Feed.open('feed://feeds.feedburner.com/WineBlogOfBacchusBeery?format=xml')
  end

  def wii_rss
    #@feed_wii = FeedTools::Feed.open('feed://wineindustryinsight.com/?feed=rss')
  end


end
