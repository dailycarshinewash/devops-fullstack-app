module "cdn" {
  source = "terraform-aws-modules/cloudfront/aws"

  #   aliases = [""]

  comment                       = "Personal Website for Suyog Maid"
  enabled                       = true
  is_ipv6_enabled               = true
  price_class                   = "PriceClass_All"
  retain_on_delete              = false
  wait_for_deployment           = false
  default_root_object           = "index.html"
  create_origin_access_identity = true
  origin_access_identities = {
    s3_bucket_one = "My awesome CloudFront can access"
  }

  origin = {

    s3_one = {
      domain_name = module.s3_bucket.s3_bucket_bucket_domain_name
      s3_origin_config = {
        origin_access_identity = "s3_bucket_one"
      }
    }
  }

  default_cache_behavior = {
    target_origin_id       = "s3_one"
    viewer_protocol_policy = "redirect-to-https"
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"

    allowed_methods = ["GET", "HEAD"]
    compress        = true
    use_forwarded_values = false
  }
}
