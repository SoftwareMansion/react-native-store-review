require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = "RNStoreReview"
  s.version        = package["version"]
  s.summary        = "App Store Ratings for React Native."
  s.homepage       = "https://github.com/oblador/react-native-store-review"
  s.license        = "MIT"
  s.author         = { "Joel Arvidsson" => "joel@oblador.se" }
  s.platform       = :ios, "7.0"
  s.source         = { :git => "https://github.com/oblador/react-native-store-review.git", :tag => "v#{s.version}" }
  s.source_files   = "ios/**/*.{h,m}"
  s.requires_arc   = true

  s.dependency "React"

end


