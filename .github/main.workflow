workflow "Test workflow" {
  on = "push"
  resolves = "Test"
}

action "Test" {
  uses = "docker://golang:1.11"
  runs = "make"
  args = "test"
}
