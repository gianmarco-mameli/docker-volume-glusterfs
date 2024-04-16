variable "VERSION" {
  default = ""
}

variable "REGISTRY_IMAGE" {
  default = ""
}

variable "BUILD_IMAGE" {
  default = ""
}

target "default" {
  dockerfile = "Dockerfile"
  args = { BUILD_IMAGE = BUILD_IMAGE }
  tags = ["${REGISTRY_IMAGE}:${VERSION}"]
  platforms = ["linux/arm64"]
}
