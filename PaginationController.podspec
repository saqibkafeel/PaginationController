Pod::Spec.new do |s|
    s.name = "PaginationController"
    s.version = "1.0.0"
    s.summary = "PaginationController provides logic to paginate through a list."
    s.author = "Saqib Kafeel"
    s.license = { :type => "MIT" }
    s.homepage = "https://github.com/saqibkafeel/PaginationController"
    s.platform = :ios
    s.source = { :git => "https://github.com/saqibkafeel/PaginationController.git", :tag => "1.0.0" }
    s.source_files = "PaginationController/Sources/*.swift"
    s.ios.deployment_target = "10.0"
    s.ios.frameworks = 'Foundation', 'UIKit'
    s.requires_arc = true
    s.swift_version = "5.0"
end
