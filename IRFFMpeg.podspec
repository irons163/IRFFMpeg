Pod::Spec.new do |spec|
  spec.name         = "IRFFMpeg"
  spec.version      = "4.2.12"
  spec.summary      = "FFMpeg for iOS."
  spec.description  = "FFMpeg for iOS."
  spec.homepage     = "https://github.com/irons163/IRFFMpeg.git"
  spec.license      = "MIT"
  spec.author       = "irons163"
  spec.platform     = :ios, "8.0"
  spec.source       = { :git => "https://github.com/irons163/IRFFMpeg.git", :tag => spec.version.to_s }
  spec.source_files = "include/**/*.h", "IRFFMpeg.m", "IRFFMpeg.h"
  spec.public_header_files = "include/**/*.h", "IRFFMpeg.h"
  spec.vendored_libraries = "**/*.a"
  spec.libraries = "z", "iconv", "bz2", "lzma"
#  spec.ios.deployment_target = '9.0'
  spec.frameworks = "AVFoundation", "UIKit", "Foundation"
  spec.header_mappings_dir = "include"
  spec.static_framework = true
#  spec.ios.vendored_frameworks = 'IRFFMpeg.framework'
#  spec.xcconfig = { "OTHER_LDFLAGS" => "-ObjC -all_load" }
#  spec.static_framework = true
#  spec.default_subspec = 'FFMpegLib'
#
#  spec.subspec 'FFMpegLib' do |subcfiles|
#
#    #subspec包含的代码文件，上面source是路径，这里source_files是具体要包含哪些文件
#    #其中**表示包含子目录，*表示当前目录下的所有文件
#    #下面表示当前subspec包含MyLibrary/cfiles目录及其子目录中的所有.h和.c文件；以及MyLibrary/log目录下的所有.h和.c文件
#    subcfiles.source_files = "include/**/*.h"
#    subcfiles.public_header_files = "include/**/*.h"
#    #不包含的文件
##    subcfiles.exclude_files = "**/ThirdParty/ffmpeg/include/**/version.h"
#
#    #加入到pod库中，被一起编译
#    #这里通常使用私有第三方库时，需要依赖某个lib或framework时使用。
#    #添加如下选项后，会将.a添加到工程中，并且添加LIBRARY_SEARCH_PATHS路径
#    #但是需要注意的是，如果使用pod package对该pod库进行打包，这个.a并不会打进去。
#    #比如说使用pod package对MyLibrary打包成MyLibrary.a，inner.a并不会被编译进MyLibrary.a。
#    #此时，如果如果对外提供MyLibrary.a，inner.a也同样需要提供出去
##    subcfiles.vendored_libraries = "MyLibrary/lib/ios/inner.a"
#    subcfiles.vendored_libraries = "**/*.a"
#    subcfiles.libraries = "z", "iconv", "bz2", "lzma"
#    subcfiles.frameworks = "AVFoundation"
##    subcfiles.public_header_files = "**/ThirdParty/ffmpeg/include/**/*.h"
#    #pod工程的配置
#    #对于HEADER_SEARCH_PATHS，对将设置的字符串直接拷贝到xcode中，不会像上面source_files这样使用相对路径。
#    #所以，我在这里先获取当前路径，再设置进去。最后加**表示recursive，即循环查找子目录的意思
##    $dir = File.dirname(__FILE__)
##    $dir = $dir + "/IRPlayer/ThirdParty/ffmpeg/**"  #$dir:/Users/wangbing/TempCode/MyLibrary/cfiles/**
##    subcfiles.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => $dir}
##    subcfiles.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/Headers/Private/**"}
#
#subcfiles.pod_target_xcconfig = { "MACH_O_TYPE" => "mh_dylib" }
#
#    #demo工程的配置，上面是对pod工程的设置，当需要对demo工程设置时，使用user_target_xcconfig，这里就不做介绍了
#
#    #相对于public_headers，这些文件不会被公开给Demo
##    subcfiles.private_header_files = "**/ThirdParty/ffmpeg/include/**/*.h"
#    #保护目录结构不变，如果不设置，所有头文件都将被放到同一个目录下
#    subcfiles.header_mappings_dir = "include"
##    subcfiles.header_dir = "AA"
##  subcfiles.header_mappings_dir = "**/ThirdParty/ffmpeg/include"
##    subcfiles.public_header_files = "**/*.h"
#  end
end
