Pod::Spec.new do |s|

  s.name = "SwiftyReuse"
  s.version = "0.1.0"
  s.summary = "A microframework that makes register dequeuing of cells in UICollectionView and UITableView pretier."
  s.author = { "Kim de Vos" => "kimdevos12@hotmail.com" }
  s.homepage = 'https://github.com/kimdv/SwiftyReuse'
  s.social_media_url = 'http://twitter.com/kimdv'
  s.license = "MIT"

  s.source = { :git => "https://github.com/kimdv/SwiftyReuse.git", :tag => s.version }
  s.source_files = "Sources/**/*.swift"
  
  s.ios.deployment_target = "11.0"

end