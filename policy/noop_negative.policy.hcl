resource_policy "random_pet" "noop_negative_check" {
  operations = ["no-op"]

  enforce {
    condition     = attrs.length == 3
    error_message = "noop_negative_check: random_pet length must be 3 (got ${attrs.length})"
  }
}
