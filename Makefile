project:
	xcodegen

format:
	swiftformat --header "" --swiftversion 5 --indentcase true --stripunusedargs unnamed-only --self insert --disable blankLinesAtStartOfScope,blankLinesAtEndOfScope .

assets:
	# export icon
	sketchtool export slices OpaqueTypes/Assets/AppIcon.sketch && mv Icon.png icon*.png OpaqueTypes/Assets/Assets.xcassets/AppIcon.appiconset/
	# slice assets into xcassets - to install sketch-xcassets script:
	# curl https://gist.githubusercontent.com/ralfebert/2c350eea0e25deeaa44488d95e844965/raw/1b716d82a49f96849e859b3e378ed20c9f5b0ea3/slice.py -o /usr/local/bin/sketch-xcassets
	# chmod u+x /usr/local/bin/sketch-xcassets
	sketch-xcassets OpaqueTypes/Assets/Assets.sketch OpaqueTypes/Assets/Assets.xcassets
