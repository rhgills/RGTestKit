desc "push out a tagged release to cocoapods"
task :release, [:version] do |t, args|
  version = args.version

  sh "subl #{podspec} --wait"
  sh "pod spec lint #{podspec} --quick --only-errors"
  sh %Q|git commit #{podspec} -m "Release #{version}"|
  sh "git tag #{version}"
  sh "git push"
  sh "git push --tags"
  sh "pod push rhgills-private --allow-warnings"
end

def podspec
  'RGTestKit.podspec'
end