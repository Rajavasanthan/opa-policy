package policy

default allow = false

allow {
    input.user.roles[_] == "admin"
    input.request.method == "GET"
    input.request.url == "dashboard"
}