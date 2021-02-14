workflow "publish on release" {
  on = "push"
  resolves = ["publish"]
}
