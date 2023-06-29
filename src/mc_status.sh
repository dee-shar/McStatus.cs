#!/bin/bash

api="https://api.mcstatus.io/v2"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

function get_java_server_status() {
	# 1 - address: (string): <address>
	curl --request GET \
		--url "$api/status/java/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_bedrock_server_status() {
	# 1 - address: (string): <address>
	curl --request GET \
		--url "$api/status/bedrock/$1" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}
