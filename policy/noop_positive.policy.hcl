resource_policy "random_pet" "noop_positive_check" {
  operations = ["no-op"]

  enforce {
    condition     = attrs.length == 2
    error_message = "noop_positive_check: random_pet length must be 2 (got ${attrs.length})"
  }
}
