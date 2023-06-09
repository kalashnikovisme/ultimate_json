run:
	RUST_BACKTRACE=1 bundle exec rake compile
	RUST_BACKTRACE=1 bundle exec ruby -rultimate_json parse_json_rust.rb test.json

benchmark:
	RUST_BACKTRACE=1 bundle exec rake compile
	RUST_BACKTRACE=1 bundle exec ruby -rultimate_json parse_json_rust.rb test-300MB.json
	bundle exec ruby parse_json.rb test-300MB.json

another:
	# RB_SYS_CARGO_COMPILE=release RB_SYS_CARGO_PROFILE=release bundle exec rake compile && bundle exec ruby -rultimate_json parse_json_rust.rb
	# bundle exec ruby parse_json.rb test-300MB.json
	# RB_SYS_CARGO_COMPILE=release bundle exec rake compile && bundle exec ruby -rultimate_json -e 'puts ParseJson.parse_json("test-1GB.json")'
